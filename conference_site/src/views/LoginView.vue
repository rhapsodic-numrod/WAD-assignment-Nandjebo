<template>
  <main>
    <div class="conferenceLogo flex flex-row">
    <IconNust location="/" :width="20" class="logo order-0"/>
      <h1 class="order-1 text-white">
      Tech for Humanity Conference
      @ NUST
      </h1>
    </div>
    <!--    Error handling-->
    <div v-if="errorMsg" class="mb-10 p-4 rounded-md fill-gray-400">
      <p class="text-red-500">
        {{errorMsg}}
      </p>
    </div>
    <!--    Login form-->
    <div class="form">
      <form @submit.prevent="login" class="mt-10 mb-10 p-4 text-white flex flex-column justify-content-center">
  <!--      Email input -->
        <div class="mb-3">
          <label for="email" class="form-label">Email address</label>
          <input type="email" class="form-control" id="email" aria-describedby="emailHelp" required v-model="email">
          <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
        </div>
  <!--      Password input -->
        <div class="mb-3">
          <label for="password" class="form-label">Password</label>
          <input type="password" class="form-control" id="password" required v-model="password">
        </div>
  <!--      Login Button-->
        <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="showPassCheckbox">
          <label class="form-check-label" for="showPassCheckbox">Show Password</label>
        </div>
        <button type="submit" class="pt-1.5 pb-1.5 pl-3 pr-3">Login</button>
        <div>
          <div >or </div>
          <RouterLink to="/register">Register</RouterLink>
        </div>
      </form>
    </div>
  </main>
</template>

<script>
import IconNust from "../components/icons/IconNust.vue";
import {ref} from "vue";
import {supabase} from "../supabase";
import {useRouter} from "vue-router";

export default {
  name: "Login",
  components: {IconNust},
  setup () {
    // Vars
    const router = useRouter();
    const email = ref(null);
    const password = ref(null);
    const errorMsg = ref(null);

    //Login function
    const login = async ()=>{
      try {
        let { error } = await supabase.auth.signInWithPassword({
          email: email.value,
          password: password.value
        })
        if (error) throw error;
        router.push({name: "home"})
      }catch (error){
        errorMsg.value = `Error: ${error.message}`
        setTimeout(()=>{
          errorMsg.value = null;
        }, 5000);
      }
    };
    return {email, password, errorMsg, login}
  }
}
</script>

<style scoped>
form{
  width: 651px;
  background: #011628;
}

.form{
  display: flex;
  justify-content: center;
  align-items: center;
}

button{
  background: #B92025;
}

.logo{
  width: 4rem;
  height: auto;
}

main{
  background: url(@/assets/img/aaron-blanco-tejedor-yH18lOSaZVQ-unsplash.jpg);
  top: 0;
  width: 100%;
  height: 100%;
}
</style>