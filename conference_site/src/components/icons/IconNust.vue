<template>
  <RouterLink class="active" :to="location">
    <img class="logo" src="../../assets/nust.svg">
  </RouterLink>
</template>

<script >
export default {
  name: "IconNust",
  props: {
    width: Number,
    location: String
  }
}
</script>

<style scoped>
.logo{
  width: v-bind(width)rem;
  height: auto;
}
</style>