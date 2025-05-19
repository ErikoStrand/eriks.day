<script lang="ts">
	import Footer from '$lib/components/Footer.svelte';
	import Navbar from '$lib/components/Navbar.svelte';
	import '../app.css';
	import { fly } from 'svelte/transition';

	let { children, data } = $props();
</script>

<main class="flex min-h-svh flex-col bg-neutral-900">
	<Navbar />
	{#key data.url}
		<span class="" in:fly={{ x: -200, duration: 250 }}>{@render children()}</span>
	{/key}
	<Footer />
</main>
