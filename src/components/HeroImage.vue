<template>
  <img
    class="bg-contain animate-fade-in-two py-4 px-8 max-w-lg mx-auto"
    src="../assets/landscape.png"
  />
</template>

<style>
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
