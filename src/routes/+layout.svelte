<script lang="ts">
	import Navbar from '$lib/components/Navbar.svelte';
	import '../app.css';

	let { children } = $props();
</script>

<section class="flex min-h-svh flex-col bg-neutral-900">
	<Navbar />
	{@render children()}
</section>
