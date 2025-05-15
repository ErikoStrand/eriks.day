<script>
	let { title, description } = $props();
	import { fly, slide } from 'svelte/transition';
	let isOpen = $state(true);
	import Chevron from '$lib/svgs/Chevron.svelte';
	import { linear } from 'svelte/easing';
</script>

<section class="flex flex-col gap-1 rounded-lg bg-neutral-800 px-4 py-2 shadow-md">
	<button
		onclick={() => (isOpen = !isOpen)}
		aria-label="open-accordian"
		class="flex flex-row justify-between font-mono text-lg"
	>
		{title}
		<span
			class="transition-transform duration-300"
			style="transform: rotate({isOpen ? 180 : 0}deg)"
		>
			<Chevron class="size-7 text-blue-500"></Chevron>
		</span>
	</button>
	{#if isOpen}
		<div transition:slide={{ duration: 200, easing: linear }} class=" text-neutral-400">
			{description}
		</div>
	{/if}
</section>
