<template>
<div class="event border-2 p-3">
  <div class="eventInfo">
    <h1>{{ eventName }}</h1>
    <h1>{{ date }}</h1>
    <h1>{{ location }}</h1>
  </div>
  <div class="helperInfo">
    <p>View more information by clicking the button</p>
    <Button :on-click="action" name="View details"></Button>
  </div>
</div>
</template>

<script>
import Button from "../Button.vue";
export default {
  name: "Event",
  props: {
    eventName: String,
    date: String,
    location: String,
    action: {
      type: Function,
      required: true
    }
  },
  components: {Button},
}
</script>

<style scoped>

</style>