<template>
  <v-container>
    <img class="center" alt="Vue logo" src="@/assets/logo.png">
    <h1 align="center">Branch</h1>
    <v-layout row wrap justify-center>
      <v-flex xs12>
      </v-flex>
      <v-flex xs2>
        <v-text-field label="Leaf"></v-text-field>
      </v-flex>
      <v-flex xs1>
        <v-btn small @click="$router.push('l/foobar')">Go to Leaf</v-btn>
      </v-flex>
    </v-layout>
    <router-view/>
  </v-container>
</template>

<script>
export default {
  name: 'Branch',
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
</style>
