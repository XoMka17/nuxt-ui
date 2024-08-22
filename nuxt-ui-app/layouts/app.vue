<template>
    <UContainer>
        <UCard class="mt-10">
            <template #header>
                <div class="flex justify-between">
                    <h1>Welcome to Nuxt UI Starter</h1>
                    <div class="flex flex-row gap-2">
                        <UButton icon="i-heroicons-book-open" to="https://ui.nuxt.com" target="_blank">Nuxt UI Doc</UButton>
                        <UButton icon="i-heroicons-book-open" to="https://tailwindcss.com/docs/installation" target="_blank">Tailwindcss Doc</UButton>
                        <ColorScheme><USelect v-model="$colorMode.preference" :options="['system', 'light', 'dark']" /></ColorScheme>
                    </div>
                </div>
            </template>
        </UCard>
    </UContainer>
    <slot />
</template>