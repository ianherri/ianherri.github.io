<script setup>
defineProps({
  heading: String,
  subHeading: String,
  content: String,
});
</script>

<template>
  <div class="flex items-center justify-center mt-4">
    <div class="text-white text-center max-w-lg px-10">
      <h1 class="animate-fade-in-one text-5xl font-bold font-serif mt-4">
        {{ heading }}
      </h1>
      <h2 class="animate-fade-in-one text-2xl font-extralight mt-4">
        {{ subHeading }}
      </h2>
      <p
        class="animate-fade-in-two text-lg font-extralight leading-loose bg-wite mt-4"
      >
        {{ content }}
      </p>
    </div>
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
