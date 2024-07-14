<template>
  <div id="basicLayout">
    <a-layout style="height: 100vh">
      <a-layout-header class="header">
        <GlobalHeader />
      </a-layout-header>
      <a-layout-content class="content">Content</a-layout-content>
      <a-layout-footer class="footer">
        <div class="footer-content">
          <p>&copy; 2024 My Website. All rights reserved.</p>
        </div>
      </a-layout-footer>
    </a-layout>
  </div>
</template>

<script>
import { defineComponent } from "vue";
import GlobalHeader from "@/components/GlobalHeader.vue";

export default defineComponent({
  components: { GlobalHeader },
});
</script>

<style>
#basicLayout .footer {
  background: #efefef;
  padding: 16px;
  position: fixed;
  bottom: 0;
  left: 0;
  right: 0;
  text-align: center;
}

.footer-content {
  max-width: 1200px;
  margin: 0 auto;
}
</style>
