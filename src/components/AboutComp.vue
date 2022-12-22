<template>
  <div class="about container mx-auto px-4 py-8">
    <h1 class="text-3xl font-bold text-center mb-8">My Portfolio</h1>
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
      <div class="col-span-1 rounded-lg shadow-lg bg-white p-4">
        <h2 class="text-2xl font-bold mb-4">Project 1</h2>
        <p class="mb-4">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam
          ornare mauris quis justo ultricies, at facilisis quam malesuada.
        </p>
        <a href="#" class="btn btn-blue">View project</a>
      </div>
      <div class="col-span-1 rounded-lg shadow-lg bg-white p-4">
        <h2 class="text-2xl font-bold mb-4">Project 2</h2>
        <p class="mb-4">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam
          ornare mauris quis justo ultricies, at facilisis quam malesuada.
        </p>
        <a href="#" class="btn btn-blue">View project</a>
      </div>
      <div class="col-span-1 rounded-lg shadow-lg bg-white p-4">
        <h2 class="text-2xl font-bold mb-4">Project 3</h2>
        <p class="mb-4">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam
          ornare mauris quis justo ultricies, at facilisis quam malesuada.
        </p>
        <a href="#" class="btn btn-blue">View project</a>
      </div>
    </div>
  </div>
</template>

<style>
.btn {
  @apply py-2 px-4 rounded-full font-bold text-white bg-blue-500 hover:bg-blue-600;
}
</style>
