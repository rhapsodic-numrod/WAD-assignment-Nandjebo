<template v-for="">
  <Event
      event-name="ksdjla"
      date="12 Jan 2002"
      location="Engineering Basement A"
      :action="goToEvent"
  />
</template>

<script>
import Event from "./Event.vue";



export default {
  name: "EventsList",
  components: {Event},
  methods: {
    goToEvent(){
      console.log(Event.name)
  }
  }

}
</script>

<style scoped>

</style>