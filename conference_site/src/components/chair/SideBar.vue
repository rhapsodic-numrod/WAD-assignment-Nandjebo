<template>
  <nav class="flex flex-column justify-content-center flex-start text-white gap-3 pl-5 pr-10">
    <div class="logo">
      <IconNust location="/chair/pending-papers" :width="10"/>
    </div>

    <div class="pageLinks flex flex-col gap-3">
      <RouterLink to="/chair/pending-papers"> Pending Papers </RouterLink>
      <RouterLink to="/chair/reviews"> Reviews</RouterLink>
      <RouterLink to="/chair/submit-article"> Submit Article </RouterLink>
    </div>

    <Button class="text-white " :on-click="signOut">Logout</Button>
  </nav>

</template>

<script>
import {RouterLink} from "vue-router";
import Button from "../Button.vue";
import IconNust from "../icons/IconNust.vue";
export default {
  name: "SideBar",
  components: {
    RouterLink,
    Button,
    IconNust
  },
  methods: {
    signOut(){
      console.log("I'm out nigga")
    }
  }
}
</script>

<style scoped>
nav{
  height: 100%;
  background: #011628;
}
</style>