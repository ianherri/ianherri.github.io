<script setup>
import data from "../../data/quotes.json";

import { onMounted, ref } from "vue";

const author = ref("");
const content = ref("");
const link = ref("");

onMounted(() => {
  const lengthData = data.length;
  const randEntry = Math.floor(Math.random() * lengthData);
  author.value = data[randEntry].author;
  content.value = data[randEntry].content;
  link.value = data[randEntry].link;
});
</script>

<template>
  <a :href="link" target="_blank">
    <div
      class="about container text-center max-w-lg text-white mx-auto px-10 py-2"
    >
      <p class="text-md font-thin italic">"{{ content }}"</p>
      <p class="text-md text-right font-thin mt-4">– {{ author }}</p>
    </div>
  </a>
</template>

<style></style>
