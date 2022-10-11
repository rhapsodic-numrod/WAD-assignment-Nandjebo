<template>
  <main class="flex flex-row">
    <SideBar/>
    <h1>Pending Papers</h1>
  </main>
</template>

<script>
import SideBar from "../../components/chair/SideBar.vue";
export default {
  name: "PendingPapersView",
  components: {
    SideBar
  }
}
</script>

<style scoped>

</style>