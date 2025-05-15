<script>
	let { title, description, index, openIndex = $bindable() } = $props();
	import { slide } from 'svelte/transition';
	import Chevron from '$lib/svgs/Chevron.svelte';
	import { linear } from 'svelte/easing';
	let isOpen = $derived.by(() => {
		return openIndex === index;
	});
	function handleClick() {
		if (isOpen) {
			openIndex = -1;
		} else {
			openIndex = index;
		}
	}
</script>

<section
	class="flex flex-col gap-1 rounded-lg border-[1px] border-neutral-800 bg-[linear-gradient(360deg,#262626,#1d1d1d,#131313)] bg-[length:180%_180%] px-5 py-3 shadow-md"
>
	<button
		onclick={handleClick}
		aria-label="open-accordian"
		class=" font-nunito text-md flex flex-row items-center justify-between font-semibold tracking-wide text-stone-50"
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
		<div transition:slide={{ duration: 150, easing: linear }} class=" text-neutral-400">
			{description}
		</div>
	{/if}
</section>
