<script setup lang="ts">
interface Props {
    id: string | number,
    title: string,
    url: string,
    isFavorite: boolean,
}
defineProps<Props>();
</script>

<template>
    <AppCard class="w-full max-w-[232px] flex flex-col justify-between">
        <AppEpisodeCardTitle :title="title" class="w-full" />
        <AppEpisodeCardKnowMore :url="url" :isFavorite="isFavorite" class="w-full" />
    </AppCard>
</template>