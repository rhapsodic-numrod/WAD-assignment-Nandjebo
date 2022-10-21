<template>
  <Navbar/>
  <main class="flex flex-col align-items-center justify-content-center">
    <h1>Events</h1>
    <form class="flex gap-4">
      <div class="mb-3">
        <label for="searchBar" class="form-label">Search</label>
        <input type="text" class="form-control" id="searchBar" aria-describedby="emailHelp">
      </div>
      <button class="btn btn-primary p-4"><i class="bi bi-search"></i></button>
    </form>

    <div class="flex flex-col">
      <EventsList/>
    </div>
  </main>
  <Footer/>
</template>

<script setup>
import EventsList from "../../components/researcher/EventsList.vue";
import Navbar from "../../components/researcher/Navbar.vue";
import Footer from "../../components/Footer.vue";
</script>

<style scoped>

</style>