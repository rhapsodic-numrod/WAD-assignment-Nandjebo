<script>
import { RouterView } from "vue-router";
import Footer from "./components/Footer.vue";
import {supabase} from "./supabase";
import {ref} from "vue";
import store from "./stores/index";

export default {
  name: "App",
  components: {
    Footer,
    RouterView
  },
  setup() {
    // Create data / vars
    const appReady = ref(null);
    // Check to see if user is already logged in
    const user = supabase.auth.getUser()
    // If user does not exist, need to make app ready
    if (!user){
      appReady.value = false;
    }
    // Runs when there is a auth state change
    // if user is logged in, this will fire
    supabase.auth.onAuthStateChange((_, session) =>{
      console.log("hello")
      store.methods.setUser(session);
      appReady.value = true;
    })
    return {};
  },
}
</script>

<template>
  <RouterView/>
  <Footer />
</template>

<style scoped>

</style>
