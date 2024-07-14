<template>
  <a-row id="globalHeader" align="center" :wrap="false">
    <a-col flex="auto">
      <a-menu
        mode="horizontal"
        @menu-item-click="doMenuClick"
        :selected-keys="selectedKeys"
      >
        <a-menu-item
          key="0"
          :style="{ padding: 0, marginRight: '38px' }"
          disabled
        >
          <div class="titleBar">
            <img class="logo" src="../assets/logo.png" />
            <div class="title">AI答题平台</div>
          </div>
        </a-menu-item>
        <a-menu-item v-for="item in visibleRoutes" :key="item.path"
          >{{ item.name }}
        </a-menu-item>
      </a-menu>
    </a-col>
    <a-col flex="100px">
      <a-button type="primary" href="/user/login">登录</a-button>
    </a-col>
  </a-row>
</template>

<script setup lang="ts">
import { routes } from "@/router/routes";
import { useRouter } from "vue-router";
import { ref } from "vue";

const router = useRouter();
const doMenuClick = (key: string) => router.push(key);
const selectedKeys = ref(["/"]);
router.afterEach((to) => (selectedKeys.value = [to.path]));
const visibleRoutes = routes.filter((item) => {
  if (item.meta?.hideInMenu) {
    return false;
  }
  return true;
});
</script>

<style>
.titleBar {
  display: flex;
  align-items: center;
  padding: 10px;
}

.logo {
  width: 40px; /* 根据需要调整图像大小 */
  height: 40px; /* 根据需要调整图像大小 */
  margin-right: 12px;
}

.title {
  display: inline-block;
  color: #333;
  font-weight: bold;
  font-size: 24px;
  font-family: "Arial", sans-serif;
  line-height: 50px;
  vertical-align: middle;
}
</style>
