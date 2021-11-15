<template>
  <div class="navbar-fixed">
    <nav>
      <div id="nav" class="nav-wrapper cyan lighten-3">
        <ul class="left">
          <li :class="{'active': $route.path == '/'}">
            <router-link tag="a" to="/">Home</router-link>
          </li>
          <li :class="{'active': $route.path == '/about'}">
            <router-link tag="a" to="/about">About</router-link>
          </li>
        </ul>
      </div>
    </nav>
  </div>
  <router-view/>
</template>

<style lang="scss">
#nav {
  a {
    font-weight: bold;
  }
}

li.active a {
  color: white;
}
</style>
