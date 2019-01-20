<template>
  <v-container>
    <img class="center" alt="Vue logo" src="@/assets/logo.png">
    <h1 align="center">Tree</h1>
    <v-layout row wrap justify-center>
      <v-flex xs2>
        <v-text-field label="Branch"/>
      </v-flex>
      <v-flex xs1>
        <v-btn small @click="$router.push('branch/foobar')">Go to Branch</v-btn>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  name: 'Tree',
  metaInfo: {
    title: 'Tree',
    titleTemplate: null,
  },
  methods: {
    goToBranch() {
      this.$router.push('branch/');
    },
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
