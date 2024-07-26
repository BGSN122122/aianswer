<template>
  <div id="appStatisticPage">
    <h2>热门应用统计</h2>
    <v-chart :option="appAnswerCountOptions" style="height: 300px" />
    <h2>应用结果统计</h2>
    <div class="searchBar">
      <a-input-search
        :style="{ width: '320px' }"
        placeholder="请输入appId"
        button-text="搜索"
        size="large"
        search-button
        @search="(value:any) => loadAppAnswerResultCountData(value)"
      />
    </div>
    <div style="margin-bottom: 16px" />
    <v-chart :option="appAnswerResultCountOptions" style="height: 300px" />
  </div>
</template>

<script setup lang="ts">
import {
  getAppAnswerCountUsingGet,
  getAppAnswerResultCountUsingGet,
} from "@/api/appStatisticController";
import { computed, ref, watchEffect } from "vue";
import API from "@/api";
import message from "@arco-design/web-vue/es/message";
import VChart from "vue-echarts";
import "echarts";

const appAnswerCountList = ref<API.AppAnswerCountDTO[]>([]);
// 获取应用答题统计
const loadAppAnswerCountData = async () => {
  const res = await getAppAnswerCountUsingGet();
  if (res.data.code === 0) {
    appAnswerCountList.value = res.data.data || [];
  } else {
    message.error("获取应用答题统计失败" + res.data.message);
  }
};

const appAnswerResultCountList = ref<API.AppAnswerResultCountDTO[]>([]);
// 获取应用答题统计
const loadAppAnswerResultCountData = async (appId: string) => {
  if (appId) {
    const res = await getAppAnswerResultCountUsingGet({ appId: appId as any });
    if (res.data.code === 0) {
      appAnswerResultCountList.value = res.data.data || [];
    } else {
      message.error("获取应用答题结果统计失败" + res.data.message);
    }
  } else {
    return;
  }
};
watchEffect(() => {
  loadAppAnswerCountData();
  loadAppAnswerResultCountData("");
});
const appAnswerCountOptions = computed(() => {
  return {
    xAxis: {
      type: "category",
      data: appAnswerCountList.value?.map(
        (item) => item.appName + "(" + item.appId + ")"
      ),
    },
    yAxis: {
      type: "value",
    },
    series: [
      {
        data: appAnswerCountList.value?.map((item) => item.answerCount),
        type: "bar",
      },
    ],
  };
});
const appAnswerResultCountOptions = computed(() => {
  return {
    tooltip: {
      trigger: "item",
    },
    legend: {
      orient: "vertical",
      left: "left",
    },
    series: [
      {
        name: "Access From",
        type: "pie",
        radius: "50%",
        data: appAnswerResultCountList.value.map((item) => {
          return {
            value: item.resultCount,
            name: item.resultName,
          };
        }),
        emphasis: {
          itemStyle: {
            shadowBlur: 10,
            shadowOffsetX: 0,
            shadowColor: "rgba(0, 0, 0, 0.5)",
          },
        },
      },
    ],
  };
});
</script>

<style scoped></style>
