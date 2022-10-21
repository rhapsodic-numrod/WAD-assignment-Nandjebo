<template v-if="dataLoaded">
  <div v-if="data.length === 0" >
    <h1>Papers still need to be added</h1>
  </div>

  <ul v-else class="gap-4">

    <li
        :key="index"
        v-for="(paper, index) in data"
    >
      <Paper v-if="paper.status === true"
          :paper-name="paper.name"
          :date-uploaded="paper.date"
          :abstract="paper.abstract"
          :last-name="paper.author.last_name"
          :first-name="paper.author.first_name"
          :action="goToEvent"
      />
    </li>
  </ul>
</template>

<script >
import Paper from "./Paper.vue";
import {supabase} from "../../supabase";
import {ref} from "vue";


//


export default {
  name: "PapersList",
  components: {Paper},
  methods: {
    goToEvent(){
      console.log(Event.name)
    }
  },
  setup() {
    const data = ref([])
    const dataLoaded = ref(null)

    const getData = async () => {
      try {
        const { data: events, error } = await supabase
            .from('Paper')
            .select(`
              id,
              name,
              author:User( first_name, last_name ),
              abstract,
              date:submission_date,
              status
              `);
        if (error) throw error;
        data.value = events;
        dataLoaded.value = true;
        console.log(data.value)
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

