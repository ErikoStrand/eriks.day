<script>
	import ProjectGroup from '$lib/components/ProjectGroup.svelte';
	let { data } = $props();
</script>

<section class="min-h-svh">
	<ProjectGroup {data}></ProjectGroup>
</section>
