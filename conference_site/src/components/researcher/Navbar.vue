<template>
<header>
  <img
    src="@/assets/img/jeremy-bezanger-Ro38zH1CRUY-unsplash.jpg"
  />
  <nav class="bg-blue-900 top-0 ">
    <IconNust location="/" :width="3" class="nustLogo"/>
    <ul class="pageGroup">
      <RouterLink to="/">Home</RouterLink>
      <RouterLink to="/about">About</RouterLink>
      <RouterLink to="/events">Events</RouterLink>
      <RouterLink to="/papers">Papers</RouterLink>
      <RouterLink to="/contact">Contact</RouterLink>
    </ul>
    <ul class="loginGroup ">
      <RouterLink v-if="!user" to="/login">Login</RouterLink>
      <RouterLink v-if="!user" to="/register">Register</RouterLink>
      <li v-if="user" @click="logout" class="cursor-pointer">Logout</li>
    </ul>
  </nav>
</header>
</template>

<script>
import { RouterLink} from "vue-router";
import IconNust from "../icons/IconNust.vue";
import {supabase} from "../../supabase";
import {useRouter} from "vue-router";
import {computed} from "vue";
import store from '@/stores/index.js'

export default {
  name: "Navbar",
  components: {
    RouterLink,
    IconNust
  },
  setup() {
    const user = computed(() => store.state.user)

    const router = useRouter();

    const logout = async () => {
      await supabase.auth.signOut()
      router.push({name: "home"})
    }
    return {logout, user}
  }
}
</script>

<style scoped>
*{
  font-family: 'Inter', sans-serif;
}

img{
  width: 100%;

}
header{
  display: flex;
  flex-direction: column;
}
nav {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  padding: 18px 19px;
  gap: 58px;

  position: relative;
  width: 100%;
  background: #011628;
  color: white;
}

.nustLogo{
  width: 3rem;
  height: auto;


  /* Inside auto layout */

  flex: none;
  order: 0;
  flex-grow: 0;
}

.pageGroup{
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  padding: 0px;
  gap: 45px;

  width: 656px;
  height: 22px;


  /* Inside auto layout */

  flex: none;
  order: 1;
  flex-grow: 0;
}

.loginGroup{
  /* Auto layout */

  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  padding: 0px;
  gap: 30px;

  width: 206px;
  height: 61px;


  /* Inside auto layout */

  flex: none;
  order: 2;
  align-self: stretch;
  flex-grow: 0;
}
</style>