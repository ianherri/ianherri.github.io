<script setup>
import data from "../../data/projects.json";
import { reactive } from "vue";

const state = reactive(data);
</script>

<template>
  <div class="text-white transition-all max-w-lg mx-auto px-10 pb-2">
    <div class="flex flex-col text-white" v-for="item in state" :key="item.id">
      <div class="experience-heading pb-4">
        <a :href="item.link" target="_blank">
          <h2 class="text-2xl flex flex-row items-center gap-2 py-1">
            {{ item.title }}
            <span><img class="h-3" src="../assets/link.png" /></span>
          </h2>
        </a>

        <h3 class="text-white text-sm font-extralight py-0.5">
          {{ item.description }}
        </h3>
        <div class="text-white text-sm font-medium py-2">Stack:</div>
        <div class="flex flex-row gap-2 flex-wrap max-w-lg mx-auto">
          <div
            class="text-white text-sm font-extralight border border-white px-4 py-0.5 rounded-2xl"
            v-for="bullet in item.stack"
            :key="bullet.id"
          >
            {{ bullet }}
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style>
img {
  height: 12px;
}
</style>
