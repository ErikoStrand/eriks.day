<script>
	import { onMount } from 'svelte';
	import { fly } from 'svelte/transition';
	let links = {
		'/contact': 'Contact',
		'/about': 'About me',
		'/blog': 'Blog'
	};
	let visible = $state(false);
	onMount(() => {
		visible = true;
	});
</script>

<nav class="flex flex-row justify-between px-2 py-2 md:px-8">
	<a href="/" class=" font-mono text-xl">eriks<span class="text-blue-500">.day</span></a>
	<section class="flex flex-row gap-4 text-xl font-semibold">
		{#each Object.entries(links) as [link, name], i}
			{#if visible}
				<a
					in:fly={{ x: 50, duration: 500, delay: 50 * i }}
					href={link}
					class="text-stone-800 hover:text-blue-500"
				>
					{name}
				</a>
			{/if}
		{/each}
	</section>
</nav>
