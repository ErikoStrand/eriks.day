<script>
	import Celebrate from '$lib/svgs/Celebrate.svelte';
	import Chevron from '$lib/svgs/Chevron.svelte';
	import NumberFlow from '@number-flow/svelte';
	import { sineOut } from 'svelte/easing';
	import { fly } from 'svelte/transition';
	let { copyText, title, message } = $props();
	let status = $state(title);
	let clicked = $state(false);
	let noofCopied = $state(0);
	function handleCopy() {
		noofCopied += 1;
		navigator.clipboard
			.writeText(copyText)
			.then(() => {
				status = message;
				clicked = true;
			})
			.catch(() => {
				status = 'Error!!';
			});
	}
</script>

<button
	onclick={handleCopy}
	class="animate-gradient grid overflow-hidden rounded-lg border-[1px] border-neutral-700 bg-gradient-to-br from-neutral-900 to-neutral-700 bg-[length:180%_180%] px-5 py-2 shadow-md *:col-span-full *:row-span-full *:flex *:text-stone-50"
>
	{#if noofCopied > 0}
		<h2
			class="mx-auto flex-row items-center gap-1 font-semibold"
			in:fly={{ x: -50, duration: 150, delay: 150, easing: sineOut }}
		>
			<NumberFlow value={noofCopied} suffix="x"></NumberFlow>
			{status}<Celebrate class={'size-4 fill-red-500'}></Celebrate>
		</h2>
	{:else}
		<h2 class=" mx-auto flex-row font-semibold" out:fly={{ x: 50, duration: 150, easing: sineOut }}>
			{status}<Chevron class={'size-6 origin-center rotate-45 fill-stone-50'}></Chevron>
		</h2>
	{/if}
</button>
