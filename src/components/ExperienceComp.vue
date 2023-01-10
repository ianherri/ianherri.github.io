<script setup>
import data from "../../data/experience.json";
import { reactive } from "vue";

const state = reactive(data);

function handleShowHideDetail(item) {
  console.log(state[0]);
  state.map((datum) => {
    if (datum.id === item.id) {
      datum.visible = !datum.visible;
    }
  });
}
</script>

<template>
  <div class="text-white transition-all max-w-lg mx-auto px-10 pb-2">
    <div class="flex flex-col text-white" v-for="item in state" :key="item.id">
      <div class="experience-heading pb-4">
        <a :href="item.url" target="_blank">
          <h2 class="text-2xl flex flex-row items-center gap-2 py-1">
            {{ item.company }}
            <span><img class="h-3" src="../assets/link.png" /></span>
          </h2>
        </a>

        <h3 class="text-lg font-light py-1">
          {{ item.job_title }} // {{ item.years }}
        </h3>

        <p
          @click="() => handleShowHideDetail(item)"
          class="text-xs underline cursor-pointer"
        >
          {{ item.visible ? "hide detail" : "show detail" }}
        </p>
      </div>

      <div :class="item.visible ? 'accordion-slide' : 'accordion'">
        <div
          class="text-sm py-1"
          v-for="bullet in item.description"
          :key="bullet.id"
        >
          <span class="px-1">- </span>{{ bullet }}
        </div>
      </div>
    </div>
  </div>
</template>

<style>
.accordion {
  max-height: 0px;
  overflow: hidden;
  opacity: 0;
  transition: opacity 1s;
  animation: slide-out 0.5s;
}

img {
  height: 12px;
}

.accordion-slide {
  max-height: 500px;
  opacity: 1;
  transition: opacity 2s;
  animation: slide 1s both;
}

@keyframes slide {
  from {
    max-height: 0px;
  }
  to {
    max-height: 500px;
  }
}

@keyframes opacity-show {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

@keyframes slide-out {
  from {
    max-height: 500px;
  }
  to {
    max-height: 0px;
  }
}
</style>
