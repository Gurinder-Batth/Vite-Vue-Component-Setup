<template>
   <img :src="image" alt="">
   <h1> Pizza 🍕 {{items_n}} </h1>
   <button @click="buyItem">Buy Item</button>
</template>

<style scoped>
</style>

<script >
import image from "@/assets/vue.svg"
export default {
  data() {
    return {
       items_n:0,
       image:image
    }
  },
  methods:{
    buyItem() {
        this.items_n++
    }
  }
}
</script>
