<script setup lang="ts">
const year = computed(() => (new Date).getFullYear())
</script>

<template>
    <footer class="w-full max-w-[1240px] mx-auto flex flex-col gap-10 lg:gap-20 px-4">
        <section class="flex justify-between gap-5 items-center">
            <AppLogo />
            <button class="flex items-center gap-3">
                <span class="invisible md:visible">Voltar ao topo</span>
                <AppArrowCircleUpIcon />
            </button>
        </section>

        <section class="flex justify-between border-t-2 py-5 border-gray-300">
            <span class="font-bold">© {{ year }}</span>
            <span>
                Desenvolvido por <NuxtLink to="https://epscavalcante.dev" target="_blank" noopener noreferrer
                    class="font-black text-[#11B0C8]">Eduardo Cavalcante</NuxtLink>
            </span>
        </section>
    </footer>
</template>