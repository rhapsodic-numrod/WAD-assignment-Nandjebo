<template>
  <div class="event border-2 p-3">
    <div class="eventInfo">
      <h1>{{ paperName }}</h1>
      <p>{{ firstName }}
      {{ lastName }}</p>

      <h1>{{ dateUploaded }}</h1>
    </div>
    <div class="helperInfo">
      <p >{{ abstract }}</p>
      <Button :on-click="action" name="View Paper"></Button>
    </div>
  </div>
</template>

<script>
import Button from "../Button.vue";
export default {
  name: "Paper",
  props: {
    paperName: String,
    firstName: String,
    lastName: String,
    abstract: String,
    action: {
      type: Function,
      required: true
    },
    dateUploaded: String
  },
  components: {Button},

}
</script>

<style scoped>

</style>