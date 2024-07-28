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
          <div class="titleBar" @click="router.push('/')">
            <img class="logo" src="../assets/logo1.png" />
            <div class="title">AI答题平台</div>
          </div>
        </a-menu-item>
        <a-menu-item v-for="item in visibleRoutes" :key="item.path"
          >{{ item.name }}
        </a-menu-item>
      </a-menu>
    </a-col>
    <a-col flex="150px">
      <div v-if="loginUserStore.loginUser.id">
        <div style="cursor: pointer" @click="router.push('/profile')">
          <a-avatar
            :size="24"
            :image-url="loginUserStore.loginUser.userAvatar"
            style="margin-right: 1px"
          />
          {{ loginUserStore.loginUser.userName ?? "无名" }}
        </div>
      </div>
      <div v-else>
        <a-button type="primary" href="/user/login">登录</a-button>
      </div>
    </a-col>
  </a-row>
</template>

<script setup lang="ts">
import { routes } from "@/router/routes";
import { useRouter } from "vue-router";
import { computed, ref } from "vue";
import { useLoginUserStore } from "@/store/userStore";
import checkAccess from "@/access/checkAccess";
import { userLogoutUsingPost } from "@/api/userController";
import { getAppVoByIdUsingGet } from "@/api/appController";
import message from "@arco-design/web-vue/es/message";

const loginUserStore = useLoginUserStore();

const router = useRouter();
const doMenuClick = (key: string) => router.push(key);
const selectedKeys = ref(["/"]);
router.afterEach((to) => (selectedKeys.value = [to.path]));
// 展示在菜单栏的路由数组
const visibleRoutes = computed(() => {
  return routes.filter((item) => {
    if (item.meta?.hideInMenu) {
      return false;
    }
    // 根据权限过滤菜单
    if (!checkAccess(loginUserStore.loginUser, item.meta?.access as string)) {
      return false;
    }
    return true;
  });
});
const logout = async () => {
  const res = await userLogoutUsingPost();
  if (res.data.code === 0) {
    loginUserStore.setLoginUser({});
    await router.push("/user/login");
  } else {
    message.error("退出登录失败，" + res.data.message);
  }
};
</script>

<style>
.titleBar {
  display: flex;
  align-items: center;
  padding: 10px;
  cursor: pointer;
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
