<template>
  <main>
    <div class="conferenceLogo flex flex-row">
    <IconNust :width="20" class="logo order-0"/>
      <h1 class="order-1 text-white">
      Tech for Humanity Conference
      @ NUST
      </h1>
    </div>
    <div class="form">
      <form class="mt-10 mb-10 p-4 text-white flex flex-column justify-content-center">
  <!--      Email input -->
        <div class="mb-3">
          <label for="email" class="form-label">Email address</label>
          <input type="email" class="form-control" id="email" aria-describedby="emailHelp">
          <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
        </div>
  <!--      Password input -->
        <div class="mb-3">
          <label for="password" class="form-label">Password</label>
          <input type="password" class="form-control" id="password">
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

export default {
  name: "Login",
  components: {IconNust}
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