<template>
    Icon
</template>

<script setup lang="ts">
interface Props {
    width?: string | number,
    height?: string | number,
}

const props = withDefaults(
    defineProps<Props>(), {
    width: '24px',
    height: '24px',
});
</script>

