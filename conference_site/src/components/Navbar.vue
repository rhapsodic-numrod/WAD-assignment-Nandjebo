<template>
<header>
  <img
    src="../assets/img/jeremy-bezanger-Ro38zH1CRUY-unsplash.jpg"
  />
  <nav class="bg-blue-900 top-0 ">
    <RouterLink to="/">Home</RouterLink>
    <RouterLink to="/about">About</RouterLink>

    <div class="login ">
      <RouterLink to="/login">Login</RouterLink>
      <RouterLink to="/register">Register</RouterLink>
    </div>
  </nav>
</header>
</template>

<script>
import { RouterLink} from "vue-router";

export default {
  name: "Navbar"
}
</script>

<style scoped>
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

</style>