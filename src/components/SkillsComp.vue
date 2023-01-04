<script setup>
import skills from "../../data/skills.json";
</script>

<template>
  <div class="flex flex-row gap-2 flex-wrap max-w-lg mx-auto px-10">
    <div
      class="text-white text-sm font-extralight border border-white px-4 py-0.5 rounded-2xl"
      v-for="item in skills.computer_skills"
      :key="item.id"
    >
      {{ item }}
    </div>
  </div>
</template>

<style></style>
