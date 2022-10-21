<template v-if="dataLoaded">
  <div v-if="data.length === 0" >
    <h1>Events still need to be added</h1>
  </div>

  <ul v-else class="gap-4">

    <li
        :key="index"
        v-for="(conferenceEvent, index) in data"
    >
      <Event
          :event-name= "conferenceEvent.name"
          :date="conferenceEvent.date"
          :location="conferenceEvent.building"
          :action="goToEvent"
      />
    </li>
  </ul>



</template>

<script >
import Event from "./Event.vue";
import {supabase} from "../../supabase";
import {ref} from "vue";
import router from "../../router";


//


export default {
  name: "EventsList",
  components: {Event},
  methods: {
    goToEvent(id){
     console.log("hectic")
    }
  },
  setup() {
    const data = ref([])
    const dataLoaded = ref(null)

    const getData = async () => {
      try {
        const { data: events, error } = await supabase
            .from('Event')
            .select(`
              id,
              name,
              description,
              date,
              Location ( building ),
              EventType ( name )
              `);
        if (error) throw error;
        data.value = events;
        dataLoaded.value = true;
      }catch (error){
        console.warn(error.message)
      }
    }

    getData()

    return {data, dataLoaded}
  }

}
</script>

<style scoped>

</style>