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
<!--    Registration form-->
    <div class="form">
      <form @submit.prevent="register" class="mt-10 mb-10 p-4 text-white flex flex-col rounded-md">
<!--All Inputs-->
        <div class="inputs flex flex-row gap-6 justify-content-evenly">
          <div class="left flex flex-col justify-content-center ">
            <!--        Title-->
            <div class="mb-3">
              <label for="title" class="form-label">Title</label>
              <select id="title" class="form-select" v-model="title">
                <!--              TODO: Turn select title into component-->
                <option selected>Select your title</option>
                <option value="1">Mrs</option>
                <option value="2">Ms</option>
                <option value="3">Mr</option>
              </select>
            </div>
            <!--          First name-->
            <div class="mb-3">
              <label for="firstName" class="form-label">First Name</label>
              <input type="text" id="firstName" class="form-control" v-model="firstName" required>
            </div>
            <!--          Last Name-->
            <div class="mb-3">
              <label for="lastName" class="form-label">Last Name</label>
              <input type="text" id="lastName" class="form-control" v-model="lastName" required>
            </div>
            <!--      Password input -->
            <div class="mb-3">
              <label for="password" class="form-label">Password</label>
              <input type="password" class="form-control" id="password" v-model="password" required>
            </div>
          </div>

          <div class="right flex flex-column justify-content-center">
            <!--          Organisation-->
            <div class="mb-3">
              <label for="organisation" class="form-label">Affiliated Organisation</label>
              <select id="organisation" class="form-select" v-model="affiliatedOrganisation">
                <!--              TODO: Turn select Affiliated organisation into component-->
                <option selected>Select Affiliated Organisation</option>
                <option value="1">NUST</option>
                <option value="2">MTC</option>
                <option value="3">TN</option>
              </select>
            </div>
            <!--          Middle name-->
            <div class="mb-3">
              <label for="middleName" class="form-label">Middle Name</label>
              <input type="text" id="middleName" class="form-control" v-model="middleName">
            </div>
            <!--    <--      Email input -->
            <div class="mb-3">
              <label for="email" class="form-label">Email address</label>
              <input type="email" class="form-control" id="email" aria-describedby="emailHelp" v-model="email" required>
            </div>
            <!--          Confirm password-->
            <div class="mb-3">
              <label for="passwordConfirm" class="form-label">Confirm Password</label>
              <input type="password" class="form-control" id="passwordConfirm" v-model="confirmPassword" required>
            </div>
          </div>
        </div>
        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>

        <!--      Login Button-->
        <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="showPassCheckbox">
          <label class="form-check-label" for="showPassCheckbox">Show Password</label>
        </div>
        <button :on-click="()=>{}" type="submit" class="pt-1.5 pb-1.5 pl-3 pr-3">Register</button>
        <div>
          <div >or </div>
          <RouterLink to="/login">Login</RouterLink>
        </div>
      </form>
    </div>
  </main>
</template>

<script>
import Button from "../components/Button.vue";
import IconNust from "../components/icons/IconNust.vue";
import {ref} from "vue";
import {supabase} from "../supabase";
import {useRouter} from "vue-router";

export default {
  name: "RegisterView",
  components: {
    Button,
    IconNust
  },
  setup() {
    const router = useRouter();
    // Create data / vars
    const email = ref(null);
    const title = ref(null);
    const firstName = ref(null);
    const lastName = ref(null);
    const password = ref(null);
    const confirmPassword = ref(null);
    const affiliatedOrganisation = ref(null);
    const middleName = ref(null);

    const errorMsg = ref(null);
    // Register function
    const register = async () => {
      if (password.value === confirmPassword.value){
       try {
          const {data, error} = await supabase.auth.signUp({
                email: email.value,
                password: password.value
              });
          if (error) throw error;
         if (data) {
           const {errorInsert} = await supabase
               .from('User')
               .insert([
                 {
                   id: data.user.id,
                   email: email.value,
                   title: title.value,
                   first_name: firstName.value,
                   middle_name: middleName.value,
                   last_name: lastName.value,
                   password: password.value
                 },
               ])

           if (errorInsert) throw errorInsert;
         }
         router.push({name: "login"})
       } catch (error){
          errorMsg.value = error.message;
          setTimeout(()=>{
           errorMsg.value = null;
          }, 5000);
       }
       return;
      }
      errorMsg.value = "Error: Passwords do not match"
      setTimeout(()=>{
        errorMsg.value = null;
      }, 5000);
    };

    return {email, title, firstName, lastName, middleName, password, confirmPassword, affiliatedOrganisation, errorMsg, register}
  }
}
</script>

<style scoped>
main{
  background: url(@/assets/img/aaron-blanco-tejedor-yH18lOSaZVQ-unsplash.jpg);
  top: 0;
  width: 100%;
  height: 100%;
}

.logo{
  width: 4rem;
  height: auto;
}

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
</style>