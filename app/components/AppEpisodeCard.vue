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
    <AppCard class="max-w-[232px] flex flex-col justify-between">
        <AppEpisodeCardTitle :title="title" />
        <AppEpisodeCardKnowMore :url="url" :isFavorite="isFavorite" />
    </AppCard>
</template>