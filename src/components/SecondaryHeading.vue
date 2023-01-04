<script setup>
defineProps({
  text: String,
});
</script>

<template>
  <div class="text-white max-w-lg mx-auto px-10 pb-4">
    <h1 class="animate-fade-in-one text-3xl font-bold font-serif mt-4">
      {{ text }}
    </h1>
  </div>
</template>

<style>
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

@keyframes fade-in {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
</style>
