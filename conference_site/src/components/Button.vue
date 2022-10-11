<template>
<button @click="onClick" class="btn">
  <slot>Button</slot>
</button>
</template>

<script>
export default {
  name: "Button",
  props: {
    text: String,
    onClick: {
      type: Function,
      required: true
    }
  }
}
</script>

<style scoped>

</style>