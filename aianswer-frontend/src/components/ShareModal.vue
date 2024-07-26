<template>
  <a-modal
    v-model:visible="visible"
    @click="closeModal"
    :footer="false"
    style="text-align: center"
  >
    <template #title>应用分享</template>
    <h4 style="margin-top: 0; margin-bottom: 0; text-align: center">
      复制链接
    </h4>
    <a-typography-paragraph copyable style="margin-top: 0; text-align: center">
      {{ link }}
    </a-typography-paragraph>
    <img
      :src="code"
      alt="QRCode"
      style="margin-top: 0; clear: both; display: block; margin: auto"
    />
  </a-modal>
</template>
<script setup lang="ts">
// @ts-ignore
import QRCode from "qrcode";
import { defineProps, ref, withDefaults } from "vue";
import { defineExpose } from "vue";

interface Props {
  title: string;
  link: string;
}

const visible = ref(false);
const code = ref();
const props = withDefaults(defineProps<Props>(), {
  title: () => "分享",
  link: () => "https://gitee.com/xu-dongxu122122/aianswer",
});
QRCode.toDataURL(props.link)
  .then((url: string) => {
    code.value = url;
  })
  .catch((err: string) => {
    console.error(err);
  });

const closeModal = () => {
  visible.value = false;
};
const openModal = () => {
  visible.value = true;
};
defineExpose({
  openModal,
});
</script>
<style>
.share {
}
</style>
