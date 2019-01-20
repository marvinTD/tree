<template>
  <v-container>
    <img class="center" alt="Vue logo" src="@/assets/404.jpeg" width="25%" height="25%">
    <h1 align="center">This page does not exist.</h1>
  </v-container>
</template>

<script>
export default {
  name: 'Not Found',
  metaInfo: {
    title: 'Not Found',
  },
};
</script>

<style scoped>
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
</style>
