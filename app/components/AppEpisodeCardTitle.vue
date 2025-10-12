<script setup lang="ts">
interface Props {
    title: string
}
defineProps<Props>();
</script>

<template>
    <h3 class="flex gap-3 font-bold text-base items-center">
        <AppIconMonitorPlay class="flex-[0_0_24px]" width="24px" height="24px" /> {{ title }}
    </h3>
</template>