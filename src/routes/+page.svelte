<script lang="ts">
	import Accordian from '$lib/components/Accordian.svelte';
</script>

<svelte:head>
	<title>Erik's Day | What is he doing?</title>
	<meta
		name="description"
		content="Erik Strandberg, the guy behind this site. Is a person who likes to program interactive and unique experience. Though he isn't really that sucessful when it comes down to it."
	/>
</svelte:head>

<div class="flex grow flex-col items-center justify-center p-4 text-white">
	<h1 class="font-alfa mb-4 text-center text-4xl text-stone-50">
		Hello, welcome to eriks<span class="text-blue-500">.day</span>
	</h1>
	<Accordian title={'What is this website?'} description={'Its whatever erik decides to show.'}
	></Accordian>
</div>
