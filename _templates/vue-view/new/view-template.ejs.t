---
to: src/views/<%= name %>/<%= name %>.vue
---
<template>
  <div class="<%= name %>">
    <!-- View template mark up -->
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator'

@Component({
  name: '<%= name %>',
  components: {
  },
})
export default class <%= name %> extends Vue {
  // Data
  // Methods
  public pushErrorMessage() {
    const msg = {
        message: 'Something went wrong',
        type: 'error',
    }
    this.$store.dispatch('addMessage', msg)
  }
  public pushSuccessMessage() {
    const msg = {
        message: 'Something went great',
        type: 'success',
    }
    this.$store.dispatch('addMessage', msg)
  }
}
</script>

<style lang="scss" scoped>
div.<%= name %> {
    // View specific css
}
</style>