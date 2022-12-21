<script setup>
import { onMounted } from "vue";
onMounted(() => {
  const h1 = document.querySelector("h1");
  // Wait for the component to mount, then add the "typing" class to the heading to start the animation
  h1.classList.add("typing");
});
</script>

<template>
  <div class="flex items-center justify-center mt-48">
    <div class="text-white text-center max-w-prose">
      <h1 class="animate-fade-in-one text-5xl font-bold">Hi!!</h1>
      <p class="animate-fade-in-two text-xl font-light leading-loose">
        He studied scientific truths, then became upset even more by the
        apparent cause of their temporal condition. It looked as though the time
        spans of scientific truths are an inverse function of the intensity of
        scientific effort...The more you look, the more you see... What this
        means logically is that as you try to move toward unchanging truth
        through the application of scientific method, you actually do not move
        toward it at all. You move away from it! It is your application of
        scientific method that is causing it to change!
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

.animate-typing {
  /* Set the width of the heading to 0 and hide the overflow to hide the text initially */
  width: 0;
  overflow: hidden;
}

/* Add the typing animation */
.animate-typing.typing {
  animation: typing 1s steps(30, end);
  width: auto;
}

@keyframes typing {
  from {
    width: 0;
  }
  to {
    width: 100%;
  }
}
</style>
