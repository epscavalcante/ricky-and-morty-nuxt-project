<script setup lang="ts">
interface Location {
    id: string | number,
    name: string,
    type: string,
    dimension: string,
    isFavorite: boolean,
}
interface Props {
    locations: Location[]
}
defineProps<Props>();
</script>

<template>
    <section class="flex flex-col justify-between">
        <header class="flex gap-3 mb-8 justify-center xl:justify-start">
            <h2 class="font-bold text-2xl">Localizações</h2>

            <NuxtLink to="#" class="flex items-center gap-2 bg-[#313234] rounded-2xl p-2 text-sm">
                <AppIconFourSquares />
                Ver todos
            </NuxtLink>
        </header>
        <section class="flex flex-wrap gap-4 justify-center">
            <template v-for="(location, key) in locations" :key="key">
                <AppLocationCard 
                    :id="location.id"
                    :type="location.type"
                    :dimension="location.dimension"
                    :name="location.name"
                    :isFavorite="key %2 === 0"
                />
            </template>
        </section>
    </section>
</template>