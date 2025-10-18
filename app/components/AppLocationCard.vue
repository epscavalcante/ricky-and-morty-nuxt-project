<script setup lang="ts">
interface Props {
    id: string | number,
    type: string,
    name: string,
    dimension: string,
    isFavorite: boolean
}
defineProps<Props>();
</script>

<template>
    <div class="min-h-[202px] max-w-[170px]">
        <AppIconPlanet class="mx-auto -mb-4" />

        <AppCard class="flex flex-col items-center ustify-center py-6 px-5 gap-4">
            <section class="text-center h-16">
                <h4 class="text-sm">{{ type }}</h4>
                <h3 class="text-[#11B0C8] font-bold">{{ name }}</h3>
            </section>

            <section class="flex flex-col justify-between items-center w-full gap-4">
                <NuxtLink to="#" target="_blank" noopener noreferrer
                    :class="isFavorite ? 'bg-[#313234]' : 'bg-[#11B0C8]'"
                    class="rounded-[32px] flex gap-x-2 py-1.5 px-2 items-center text-sm">
                    <AppIconExclamation />
                    Saiba mais
                </NuxtLink>

                <AppIconHeart width="32px" height="32px" :type="isFavorite ? 'filled' : 'outlined'" />
            </section>
        </AppCard>
    </div>
</template>