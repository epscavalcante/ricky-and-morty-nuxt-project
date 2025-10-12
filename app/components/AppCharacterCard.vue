<script setup lang="ts">
interface Props {
    id: string | number,
    image: string,
    name: string,
    status: string,
    specie: string,
    location: string,
    originUrl: string,
    isFavorite: boolean,
}
defineProps<Props>();
</script>

<template>
    <div class="bg-[#313234] flex flex-col rounded-lg gap-4 p-4 w-full max-w-[294px] justify-between" :key="id">
        <img :src="image" alt="" width="262" height="200" class="rounded-2xl">

        <div class="grid grid-cols-[1fr,48px]">
            <div class="flex flex-col gap-4">
                <h3 class="font-bold text-base">{{ name }}</h3>

                <ul class="flex flex-col gap-1.5">
                    <li class="flex items-center gap-1">
                        <AppIconAlive />
                        {{ status }}
                    </li>
                    <li class="flex items-center gap-1">
                        <AppIconAlien /> {{ specie }}
                    </li>
                    <li class="flex items-center gap-1">
                        <AppIconEarth />{{ location }}
                    </li>
                </ul>
            </div>
            <AppCharacterCardHeartIcon :is-favorite="isFavorite" />
        </div>
        <AppCharacterCardKnowMore :url="originUrl" :is-favorite="isFavorite" />
    </div>
</template>