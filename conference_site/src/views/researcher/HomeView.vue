<script setup>
import InfoBlock from "../../components/researcher/InfoBlock.vue";
import router from "../../router";
import Navbar from "../../components/researcher/Navbar.vue";
function goToEvents(){
  router.push('/events');
}
function goToPapers(){
  router.push('/papers');
}
</script>

<template>
  <Navbar/>
  <main class="container mt-5">
    <h1>Objective:</h1>
    <p>to discuss practical and innovative technological
      solutions to everyday challenges that human face.
    </p>

    <h1>Dates:</h1>
    <p>31st October 2022 - 5th November 2022</p>

    <h1>Venue:</h1>
    <p>Namibia University of Science and Technology, Main Campus, Windhoek
      Details on event venues to be communicated
    </p>

    <div class="infoBlocks flex flex-row mt-2 mb-4 gap-3">
      <InfoBlock
          class="order-0 "
          block-name="EVENTS"
          block-content="View all events and talks taking place during the conference"
          :action="goToEvents"
          button-name="View Events"
      />
      <InfoBlock
          class="order-1"
          block-name="PAPERS"
          block-content="Submit or review research papers submitted by other"
          :action="goToPapers"
          button-name="View Papers"
      />
    </div>

    <div class="sponsors grid grid-cols-2 gap-0.5">
      <img src="@/assets/Google_2015_logo.svg">
      <img src="@/assets/Microsoft_logo_(2012).svg">
      <img src="@/assets/Mtc_Namibia_Logo.svg">
      <img src="@/assets/Telecom_Namibia_Logo.svg">
    </div>
  </main>
</template>

<style scoped>

</style>