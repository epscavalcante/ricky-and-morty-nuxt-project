<script lang="ts" setup>
interface Episode {
    id: string | number,
    title: string,
    url: string,
    isFavorite: boolean,
}
interface Props {
    episodes: Episode[]
}
defineProps<Props>();
</script>

<template>
    <section class="flex flex-col justify-between">
        <header class="flex gap-3 mb-8 justify-center xl:justify-start">
            <h2 class="font-bold text-2xl">Episodes</h2>

            <NuxtLink to="#" class="flex items-center gap-2 bg-[#313234] rounded-2xl p-2 text-sm">
                <AppIconFourSquares />
                Ver todos
            </NuxtLink>
        </header>
        <section class="flex flex-wrap gap-4 justify-center">
            <template v-for="(episode, key) in episodes" :key="key">
                <AppEpisodeCard
                    :id="episode.id"
                    :title="episode.title",
                    :url=" episode.url"
                    :isFavorite="episode.isFavorite"
                    class="xl:grid xl:grid-cols-[repeat(5, 1fr)]"
                />
            </template>
        </section>
    </section>
</template>