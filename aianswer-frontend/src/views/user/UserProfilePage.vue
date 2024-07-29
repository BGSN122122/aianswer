<template>
  <div id="addAppPage">
    <h2 style="margin-bottom: 32px">{{ route.name }}</h2>
    <a-form
      :model="form"
      :style="{ width: '680px' }"
      label-align="left"
      auto-label-width
      @submit="handleSubmit"
    >
      <a-form-item
        field="userName"
        label="用户昵称"
        :max-length="13"
        allow-clear
      >
        <a-input v-model="form.userName" placeholder="请输入用户昵称" />
      </a-form-item>
      <a-form-item field="userProfile" label="用户简介">
        <a-input
          v-model="form.userProfile"
          placeholder="请输入用户简介"
          :max-length="17"
          allow-clear
        />
      </a-form-item>
      <a-form-item field="userAvatar" label="用户头像">
        <PictureUploader
          :value="form.userAvatar"
          :onChange="(value: any) => (form.userAvatar = value)"
        />
      </a-form-item>
      <a-form-item>
        <a-button type="primary" html-type="submit" style="width: 120px">
          提交
        </a-button>
        <a-button
          @click="logout"
          type="secondary"
          style="width: 120px; margin-left: 360px"
          >退出登录
        </a-button>
      </a-form-item>
    </a-form>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue";
import API from "@/api";
import message from "@arco-design/web-vue/es/message";
import { useRoute, useRouter } from "vue-router";
import PictureUploader from "@/components/PictureUploader.vue";
import { useLoginUserStore } from "@/store/userStore";
import {
  updateMyUserUsingPost,
  userLogoutUsingPost,
} from "@/api/userController";

const route = useRoute();
const router = useRouter();

const loginUserStore = useLoginUserStore();
const logout = async () => {
  const res = await userLogoutUsingPost();
  if (res.data.code === 0) {
    loginUserStore.setLoginUser({});
    await router.push("/user/login");
  } else {
    message.error("退出登录失败，" + res.data.message);
  }
};
const form = ref({
  userName: loginUserStore.loginUser.userName,
  userAvatar: loginUserStore.loginUser.userAvatar,
  userProfile: loginUserStore.loginUser.userProfile,
} as API.UserUpdateMyRequest);

/**
 * 提交
 */
const handleSubmit = async () => {
  const res = await updateMyUserUsingPost(form.value);
  if (res.data.code === 0) {
    loginUserStore.setLoginUser(form.value);
    await loginUserStore.fetchLoginUser();
    message.success("用户信息修改成功");
  } else {
    message.error("操作失败，" + res.data.message);
  }
};
</script>
