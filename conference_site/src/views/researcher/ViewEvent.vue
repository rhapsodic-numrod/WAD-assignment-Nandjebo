<template>

</template>

<script>
import {ref} from "vue";
import {supabase} from "../../supabase";
import {useRoute} from "vue-router";

export default {
  name: "ViewEvent",
  setup(){
    // Create data / vars
    const data = ref(null)
    const dataLoaded = ref(null)
    const errorMsg = ref(null)
    const route = useRoute()
    // Get current Id of route
    const currentId = route.params.eventId
    // Get workout data
    const getData = async () => {
      try {
        const { data: event, error } = await supabase
            .from('Event')
            .select(`
              id,
              name,
              description,
              date,
              Location ( building ),
              EventType ( name )
              `).eq("id", currentId);
        if (error) throw error;
        data.value = event;
        dataLoaded.value = true;
      }catch (error){
        errorMsg.value = `Error: ${error.message}`
        setTimeout(()=>{
          errorMsg.value = null;
        }, 5000);
      }
    }

    getData();
    // Delete workout
    // Edit mode
    // Add exercise
    // Delete exercise
    // Update Workout
  }
}
</script>

<style scoped>

</style>