<template>
  <div class="parallax-container">
    <div ref="pltop" class="parallax"><img class="pl-img" src="@/assets/pl1.jpg"></div>
  </div>

  <div class="home">
    <h1>Welcome</h1>

    <p style="font-size: 3rem;">This is a lot of text to fill the area below my header.
    I'm trying to extend the text field far below the edge of the
    window in order to test my image placement and movement for the
    parallax effect. It's a lot of nonsense to be written on a page,
    but it helps to ensure the overall intended effect is attained
    without having to connect a service provider to come up with
    fake text.
    </p>
  </div>
</template>

<script>
import { onMounted, ref } from 'vue';
import M from 'materialize-css';

export default {
  name: 'Home',
  components: {
  },
  setup() {
    const pltop = ref(null);

    onMounted(() => {
      M.Parallax.init(pltop.value);
    });

    return {
      pltop,
    };
  },
};
</script>

<style type="scss">
.home {
  text-align: center;
}

.pl-img {
  height: 800px;
  width: 800px;
  object-fit: cover;
}
</style>
