<template v-for="event in events" :key="event.name">
  <Suspense>
    <li v-if="!event === error">
      <Event
          :event-name= "event.name"
          date="12 Jan 2002"
          location="Engineering Basement A"
          :action="goToEvent"
      />
    </li>
  </Suspense>
</template>

<script setup>
import Event from "./Event.vue";
import {supabase} from "../../supabase";


let { data: events, error } = await supabase
    .from('Event')
    .select(`
    id,
    name,
    description,
    date,
    building:location_id( building ),
    room:location_id( room ),
    Event:id( name )
    `)

function goToEvent(){
  console.log(Event.name)
}

// export default {
//   name: "EventsList",
//   components: {Event},
//   methods: {
//     goToEvent(){
//       console.log(Event.name)
//     }
//   },
//   data: data
//
// }
</script>

<style scoped>

</style>