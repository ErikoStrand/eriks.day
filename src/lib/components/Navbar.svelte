<script>
	import { onMount } from 'svelte';
	import NavItem from './NavItem.svelte';
	import { fly } from 'svelte/transition';
	let links = {
		'/about': 'About',
		'/blog': 'Blog',
		'/projects': 'Projects',
		'/contact': 'Contact'
	};
	let visible = $state(false);
	onMount(() => {
		visible = true;
	});
</script>

<nav
	class="sticky top-0 z-50 flex flex-row justify-between border-b-[1px] border-neutral-700 bg-neutral-900/50 px-2 py-2 backdrop-blur-md md:px-8"
>
	<a href="/" class=" font-mono text-xl text-stone-50"
		>eriks<span class="text-blue-400">.day</span></a
	>
	<section class="flex flex-row gap-4 text-xl font-semibold">
		{#each Object.entries(links) as [link, name], i}
			{#if visible}
				<span in:fly={{ y: -50, duration: 500, delay: 50 * i }}>
					<NavItem {link} {name}></NavItem>
				</span>
			{/if}
		{/each}
	</section>
</nav>
