<script setup>
import books from "../../data/books.json";

books.sort((a, b) => b.year - a.year);

books.forEach((year) => {
  let ct = 0;
  year.books.forEach((book) => {
    book.ct = ct;
    ct++;
  });
});
</script>

<template>
  <div class="flex flex-col gap-2 max-w-lg mx-auto px-10">
    <div
      class="text-white text-sm font-medium py-2"
      v-for="book in books"
      :key="book.id"
    >
      <div class="book-title pb-2">{{ book.year }}</div>
      <div
        class="text-white text-sm font-light py-0.5"
        v-for="item in book.books"
        :key="item.id"
      >
        <div class="book-container">
          <a :href="item.link" target="_blank">
            <span class="link"></span>
          </a>
          <span class="font-extralight text-xs pr-2">{{ item.ct }} </span
          >{{ item.title }}
          <span class="font-extralight text-slate-500">{{ item.author }} </span>
        </div>
      </div>
    </div>
  </div>
</template>

<style>
.book-container {
  position: relative;
}
.link {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  z-index: 1;
}
</style>
