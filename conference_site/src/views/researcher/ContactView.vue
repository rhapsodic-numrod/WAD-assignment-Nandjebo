<template>
  <Navbar/>
<h1>Contact Us</h1>
  <div class="form">
    <form class="mt-10 mb-10 p-3 text-white align-content-center">
      <!--      full name input -->
      <div class="mb-3">
        <label for="fullName" class="form-label">Full Name</label>
        <input class="form-control" id="fullName" aria-describedby="emailHelp">
      </div>
<!--       organisation input-->
      <div class="mb-3">
        <label for="organisation" class="form-label">Organisation</label>
        <input class="form-control" id="organisation" aria-describedby="emailHelp">
      </div>
<!--      email address input-->
      <div class="mb-3">
        <label for="email" class="form-label">Email address</label>
        <input type="email" class="form-control" id="email" aria-describedby="emailHelp">
        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
      </div>
<!--      subject input-->
      <div class="mb-3">
        <label for="subject" class="form-label">Subject</label>
        <input class="form-control" id="subject" aria-describedby="emailHelp">
      </div>

      <!--      Password input -->
      <div class="mb-3">
        <label for="message" class="form-label">Message</label>
        <textarea class="form-control" id="message" rows="4"></textarea>
      </div>
      <!--      Login Button-->
      <button type="submit" class="pt-1.5 pb-1.5 pl-3 pr-3">Send Message</button>
    </form>
  </div>
</template>

<script setup>
import Navbar from "../../components/researcher/Navbar.vue";

</script>

<style scoped>
form{
  width: 651px;
  background: #011628;
}

.form{
  display: flex;
  justify-content: center;
}

button{
  background: #B92025;
}
</style>