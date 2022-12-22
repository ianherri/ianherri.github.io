<script setup>
import AboutComp from "../components/AboutComp.vue";
import TheWelcome from "../components/TheWelcome.vue";
import TheSpacer from "../components/TheSpacer.vue";
</script>

<template>
  <TheWelcome
    heading="Ian Herrington"
    subHeading="Software developer, writer, reader"
    content="Austin, TX"
  />
  <TheSpacer />
  <AboutComp />
  <TheSpacer />
  <div class="footer w-screen h-16"></div>
</template>
