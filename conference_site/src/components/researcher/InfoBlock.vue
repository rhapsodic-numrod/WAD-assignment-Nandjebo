<template>
  <div class="p-3 border-2">
    <div class="name">
      <h1>{{blockName}}</h1>
    </div>
    <div class="content">
      <p>{{blockContent}}</p>
    </div>
    <Button :on-click="action">
      {{ buttonName }}
    </Button>
  </div>
</template>

<script>
import Button from "../Button.vue";
import {RouterLink} from "vue-router";

export default {
  name: "InfoBlock",
  props: {
    blockName: String,
    blockContent: String,
    buttonName: String,
    action: {
      type: Function,
      required: true
    }
  },
  components: {Button},
}
</script>

<style scoped>
/*.name{*/
/*  width: 368px;*/
/*  height: 62px;*/
/*  !*padding: 6px 46px;*!*/
/*  background: #011628;*/
/*}*/
/*div{*/
/*  width: 368px;*/
/*  height: 173px;*/
/*}*/
</style>