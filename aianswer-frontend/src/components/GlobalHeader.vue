<template>
  <a-row id="globalHeader" align="center" :wrap="false">
    <a-col flex="auto">
      <a-menu mode="horizontal" :default-selected-keys="['1']">
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
        <a-menu-item v-for="item in routes" :key="item.path"
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
</script>

<style>
.titleBar {
  display: flex;
  align-items: center;
  padding: 10px;
}

.logo {
  width: 50px; /* 根据需要调整图像大小 */
  height: 50px; /* 根据需要调整图像大小 */
  margin-right: 18px;
}

.title {
  color: #333; /* 设置文字颜色为深灰色 */
  display: inline-block; /* 设置文字为inline-block */
  vertical-align: middle; /* 使文字与图片垂直居中对齐 */
  line-height: 50px; /* 设置行高与图片高度相同 */
  font-family: "Arial", sans-serif; /* 设置字体样式 */
  font-weight: bold; /* 设置字体加粗 */
  font-size: 24px; /* 设置字体大小 */
}
</style>
