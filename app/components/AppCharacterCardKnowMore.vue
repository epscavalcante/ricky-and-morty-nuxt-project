<script setup lang="ts">
interface Props {
    url: string,
    isFavorite: boolean,
}
defineProps<Props>();
</script>
<template>
    <NuxtLink :to="url" target="_blank" noopener noreferrer :class="isFavorite ? 'bg-[#313234]' : 'bg-[#11B0C8]'"
        class="rounded-[32px] ml-auto mt-4 flex gap-x-2 py-1.5 px-2 items-center text-sm">
        <AppIconExclamation />
        Saiba mais
    </NuxtLink>
</template>