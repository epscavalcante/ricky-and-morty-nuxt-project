<script lang="ts" setup>
interface Props {
    isFavorite: boolean,
}
defineProps<Props>();
</script>

<template>
    <AppIconHeart width="48px" height="48px" :type="isFavorite ? 'filled' : 'outlined'" />
</template>