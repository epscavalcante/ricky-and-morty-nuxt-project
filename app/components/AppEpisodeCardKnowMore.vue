<script setup lang="ts">
interface Props {
    url: string,
    isFavorite: boolean
}
defineProps<Props>();
</script>

<template>
    <section class="flex justify-between items-center w-full">
        <NuxtLink :to="url" target="_blank" noopener noreferrer :class="isFavorite ? 'bg-[#313234]' : 'bg-[#11B0C8]'"
            class="rounded-[32px] flex gap-x-2 py-1.5 px-2 items-center text-sm">
            <AppIconExclamation />
            Saiba mais
        </NuxtLink>

        <AppIconHeart width="32px" height="32px" :type="isFavorite ? 'filled' : 'outlined'" />
    </section>
</template>
