<script setup>
import { RouterView } from "vue-router";

window.onscroll = function () {
  const nav = document.querySelector("nav");
  if (window.pageYOffset > 0) {
    nav.classList.add("nav-bounce");
  } else {
    nav.classList.remove("nav-bounce");
  }
};
</script>

<template>
  <div class="bg-slate-800 w-screen h-screen px-6 py-6">
    <header class="justify-center flex">
      <nav class="nav-bar flex flex-row fixed z-50 mx-auto">
        <a class="mx-2" href="https://www.truefornow.com/" target="_blank"
          ><img class="w-6" src="./assets/pen.png"
        /></a>
        <a class="mx-2" href="https://github.com/ianherri/" target="_blank"
          ><img class="w-6" src="./assets/github-mark-white.png"
        /></a>
        <a class="mx-2" href="https://twitter.com/__ianrush/" target="_blank"
          ><img
            class="w-6"
            src="./assets/Twitter social icons - circle - white.png"
        /></a>
      </nav>
    </header>
    <RouterView />
  </div>
</template>

<style>
.nav-bounce {
  animation: nav-bounce 0.5s ease-in-out;
}

@keyframes nav-bounce {
  0%,
  100% {
    transform: translateY(0);
  }
  50% {
    transform: translateY(-8px);
  }
}
</style>
