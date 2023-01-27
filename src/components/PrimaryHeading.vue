<script setup>
import { onMounted, ref } from "vue";

const props = defineProps({
  heading: String,
  subHeading: String,
  content: String,
});

const typedHeading = ref("");
const blink = ref(false);

onMounted(() => {
  let index = 0;
  const typing = setInterval(() => {
    typedHeading.value += props.heading[index];
    index++;
    if (index === props.heading.length) {
      clearInterval(typing);
    }
  }, 200);

  setInterval(() => {
    blink.value = !blink.value;
  }, 500);
});
</script>

<template>
  <div class="text-white max-w-lg mx-auto px-10">
    <h1 class="text-5xl font-bold font-serif mt-4">
      {{ typedHeading }}
      <span :class="{ 'typing-bar': true, blink: blink }"></span>
    </h1>
    <h2 class="animate-fade-in-one text-2xl font-extralight mt-4">
      {{ subHeading }}
    </h2>
    <p class="animate-fade-in-two text-lg font-extralight bg-wite mt-2">
      {{ content }}
    </p>
  </div>
</template>

<style scoped>
.animate-fade-in-one {
  animation: fade-in ease-in 1;
  animation-fill-mode: both;
  animation-duration: 1s;
}

.animate-fade-in-two {
  animation: fade-in ease-in 1;
  animation-fill-mode: both;
  animation-duration: 2s;
}

.typing-bar {
  border-right: 1px solid rgb(255, 255, 255);
  animation: blink 0.7s infinite;
  padding-left: 2px;
}
@keyframes blink {
  0% {
    opacity: 0;
  }
  50% {
    opacity: 1;
  }
  100% {
    opacity: 0;
  }
}

@keyframes fade-in {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
</style>
