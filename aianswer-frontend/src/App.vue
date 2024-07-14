<template>
  <div id="app">
    <template v-if="route.path.startsWith('/user')">
      <router-view />
    </template>
    <template v-else>
      <BasicLayout />
    </template>
  </div>
</template>

<script setup lang="ts">
import { useRoute } from "vue-router";
import BasicLayout from "@/layout/BasicLayout.vue";
import { getLoginUserUsingGet } from "@/api/userController";

const route = useRoute();
getLoginUserUsingGet().then((res) => {
  console.log(res.data);
});
</script>

<style></style>
