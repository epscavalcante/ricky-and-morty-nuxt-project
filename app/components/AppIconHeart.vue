<script setup lang="ts">
interface Props {
    type?: 'filled' | 'outlined',
    width?: string | number,
    height?: string | number,
}

const props = withDefaults(
    defineProps<Props>(), {
    type: 'outlined',
    width: '24px',
    height: '24px',
});
</script>

<template>
    <AppIconHeartFilled v-if="props.type === 'filled'" :width="props.width" :height="props.height" />
    <AppIconHeartOutlined v-if="props.type === 'outlined'" :width="props.width" :height="props.height" />
</template>
