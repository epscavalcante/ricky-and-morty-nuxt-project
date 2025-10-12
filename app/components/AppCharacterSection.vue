<script lang="ts" setup>

interface Character {
    id: string | number,
    image: string,
    name: string,
    status: string,
    specie: string,
    locationName: string,
    originUrl: string,
}

interface Props {
    characters: Character[],
}
defineProps<Props>();
</script>

<template>
    <section class="flex flex-col mx-auto gap-7">
        <header class="flex gap-5 justify-center xl:justify-start">
            <h2 class="font-bold text-2xl">Personagens</h2>

            <NuxtLink to="#" class="flex items-center gap-2 bg-[#313234] rounded-2xl p-2 text-sm">
                <AppIconFourSquares />
                Ver todos
            </NuxtLink>
        </header>
        <section class="flex flex-wrap gap-4 justify-center">
            <template v-for="character in characters" :key="character.id">
                <AppCharacterCard :id="character.id" :image="character.image" :name="character.name"
                    :status="character.status" :specie="character.specie" :location="character.locationName"
                    :originUrl="character.originUrl" :isFavorite="+character.id % 2 === 0" />
            </template>
        </section>
    </section>
</template>