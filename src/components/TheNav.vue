<script setup>
import { onMounted, onBeforeUnmount, ref } from "vue";

onMounted(() => {
  window.addEventListener("scroll", handleScroll);
});
onBeforeUnmount(() => {
  window.removeEventListener("scroll", handleScroll);
});

const navbarOverlapsHeader = ref(false);

function handleScroll() {
  // Get the bounding rectangles for the navbar and header elements
  const nav = document.querySelector(".nav-bar");
  const welcomeComponent = document.querySelector(".welcome-component");
  const navbarRect = nav.getBoundingClientRect();
  const welcomeRect = welcomeComponent.getBoundingClientRect();
  // Check if the navbar overlaps with the header

  if (navbarRect.bottom > welcomeRect.top) {
    nav.classList.add("bg-grow");
  } else {
    nav.classList.remove("bg-grow");
  }

  if (window.pageYOffset > 0) {
    nav.classList.add("nav-bounce");
  } else {
    nav.classList.remove("nav-bounce");
  }
}

const overlap = "bg-teal-900";
const noOverlap = "";
</script>

<template>
  <nav
    class="nav-bar flex flex-row fixed z-50 justify-center w-full py-4 transition-colors"
    :class="navbarOverlapsHeader ? overlap : noOverlap"
  >
    <a
      class="mx-2"
      id="nav-blog"
      href="https://www.truefornow.com/"
      target="_blank"
      ><img class="w-6" src="./assets/pen.png"
    /></a>
    <a
      class="mx-2"
      id="nav-gh"
      href="https://github.com/ianherri/"
      target="_blank"
      ><img class="w-6" src="./assets/github-mark-white.png"
    /></a>
    <a
      class="mx-2"
      id="nav-twitter"
      href="https://twitter.com/__ianrush/"
      target="_blank"
      ><img class="w-6" src="./assets/twitter-logo.png"
    /></a>
  </nav>
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

.bg-grow {
  /* set the initial background color and size */
  background-color: rgb(1, 47, 9);

  /* animate the background color and size */
  animation: grow 0.75s ease-out;
}

@keyframes grow {
  from {
    background-color: none;
    width: 0;
  }
  to {
    background-color: rgb(1, 47, 9);
  }
}
</style>
