<script>
	// takes a list of objects with title and description and creates accoridans of x amount
	// styling is handles by the parent componenet and the accordian component
	import Accordian from './Accordian.svelte';
	let { faq } = $props();
	let openIndex = $state(-1);
</script>

{#each faq as { title, description }, index}
	<Accordian {title} {description} bind:openIndex {index}></Accordian>
{/each}
