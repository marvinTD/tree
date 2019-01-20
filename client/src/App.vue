<template>
  <v-app dark>
    <router-view/>
  </v-app>
</template>

<script>
export default {
  name: 'App',
  metaInfo: {
    // if no subcomponents specify a metaInfo.title, this title will be used
    title: 'Default Title',
    // all titles will be injected into this template
    titleTemplate: '%s | Tree',
  },
  data() {
    return {};
  },
};
</script>
