<script setup></script>

<template>
  <nav id="navbar" class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Home</a>
    <button
      class="navbar-toggler"
      type="button"
      data-toggle="collapse"
      data-target="#navbarNav"
      aria-controls="navbarNav"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Start</a>
        </li>
      </ul>
    </div>
  </nav>
</template>

<style>
#navbar {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 999;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
}
.navbar-brand {
  font-size: 2em;
  font-weight: bold;
  color: #e74c3c;
}
.nav-link {
  font-size: 1.5em;
  font-weight: bold;
  color: #2980b9;
}
.nav-link:hover {
  color: #1abc9c;
}
.navbar-toggler {
  border: none;
  outline: none !important;
}
.navbar-toggler .navbar-toggler-icon {
  width: 1.5em;
  height: 1.5em;
  background-image: url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='0 0 32 32' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='rgba(0,0,0, 0.7)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 8h24M4 16h24M4 24h24'/%3E%3C/svg%3E");
}
@media (max-width: 992px) {
  .navbar-brand {
    display: none;
  }
}
</style>
