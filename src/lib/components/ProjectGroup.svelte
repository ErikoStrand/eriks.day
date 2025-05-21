<script>
	import Project from './Project.svelte';
	let { data } = $props();
	let noofToShow = $state(3);
	let status = $state('more');
	let projects = JSON.parse(data.projects).reverse();

	function handleClick() {
		if (noofToShow === projects.length) {
			noofToShow = 3;
			status = 'more';
		} else {
			noofToShow = projects.length;
			status = 'less';
		}
	}
</script>

<section class="flex flex-col gap-4 p-1">
	<header class="">
		<h1 class="font-nunito z-10 flex flex-row flex-wrap gap-2 text-4xl font-bold text-stone-50">
			My <div
				class="animate-gradient inline-block bg-gradient-to-r from-stone-50 via-blue-500 to-sky-500 bg-[length:180%_180%] bg-clip-text text-transparent"
			>
				Projects
			</div>
		</h1>
		<p class="font-nunito font-medium text-neutral-400">
			My most recent projects, or the ones I'm most proud of are showcased here.
		</p>
	</header>
	<div
		class="flex flex-col flex-wrap items-center justify-center gap-2 md:gap-8 lg:flex-row lg:items-stretch"
	>
		{#each projects as project, i}
			{#if i < noofToShow}
				<Project data={project} />
			{/if}
		{/each}
	</div>

	<button
		class="font-nunito mt-4 rounded bg-gradient-to-r from-blue-600 to-blue-500 px-4 py-2 text-stone-50 transition-colors duration-150 ease-in-out hover:bg-blue-500"
		onclick={handleClick}
	>
		View {projects.length - 3}
		{status}
	</button>
</section>
