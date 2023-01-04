<script setup>
import { onMounted, onBeforeUnmount, ref } from "vue";
import { RouterView } from "vue-router";

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

  if (window.pageYOffset > 0) {
    nav.classList.add("nav-bounce");
  } else {
    nav.classList.remove("nav-bounce");
  }
}
</script>

<template>
  <div
    class="main-container w-screen min-h-full items-center flex flex-col px-6"
  >
    <nav
      class="nav-bar flex flex-row fixed z-50 justify-center w-full py-4"
      :class="navbarOverlapsHeader ? overlap : noOverlap"
    >
      <a
        class="mx-4 flex flex-col items-center text-white"
        id="nav-blog"
        href="https://www.truefornow.com/"
        target="_blank"
        ><img class="w-6 h-6" src="./assets/pen.png" />
        <div class="tool-tip">blog</div></a
      >
      <a
        class="mx-4 flex flex-col items-center"
        id="nav-gh"
        href="https://github.com/ianherri/"
        target="_blank"
        ><img class="w-6 h-6" src="./assets/github-mark-white.png" />
        <div class="tool-tip">github</div></a
      >
      <a
        class="mx-4 flex flex-col items-center"
        id="nav-twitter"
        href="https://twitter.com/__ianrush/"
        target="_blank"
        ><img class="w-6 h-6" src="./assets/twitter-logo.png" />
        <div class="tool-tip">twitter</div></a
      >
    </nav>
    <div class="welcome-component mt-24">
      <RouterView />
    </div>
  </div>
</template>

<style>
.nav-bounce {
  animation: nav-bounce 0.5s ease-in-out;
}

.nav-bar {
  background-color: rgb(2, 27, 11);
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

.tool-tip {
  @apply hidden;
}
</style>
