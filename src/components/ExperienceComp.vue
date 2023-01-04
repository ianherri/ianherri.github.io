<script setup>
import data from "../../data/experience.json";
</script>

<template>
  <div class="text-white max-w-lg mx-auto px-10">
    <div class="flex flex-col text-white" v-for="item in data" :key="item.id">
      <div class="experience-heading py-4">
        <a :href="item.url" target="_blank">
          <h2 class="text-2xl underline underline-offset-4 py-1">
            {{ item.company }}
          </h2>
        </a>

        <h3 class="text-lg font-light py-1">
          {{ item.job_title }} // {{ item.years }}
        </h3>
      </div>
      <div
        class="text-sm py-1"
        v-for="bullet in item.description"
        :key="bullet.id"
      >
        <span class="px-1">- </span>{{ bullet }}
      </div>
    </div>
  </div>
</template>

<style></style>
