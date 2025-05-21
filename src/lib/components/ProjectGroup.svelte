<script>
	import Project from './Project.svelte';
	let { data } = $props();
	import { fade, fly } from 'svelte/transition';
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

<section class="mx-auto flex max-w-7xl flex-col gap-4 p-1">
	<header class="flex flex-col items-center gap-4">
		<div class="flex flex-col items-center gap-2">
			<h1 class="font-nunito z-10 flex flex-row flex-wrap gap-2 text-6xl font-bold text-stone-50">
				<div
					class="animate-gradient inline-block bg-gradient-to-r from-stone-50 via-blue-500 to-sky-500 bg-[length:180%_180%] bg-clip-text text-transparent"
				>
					Projects
				</div>
				that I've made
			</h1>
			<p class="font-nunito max-w-lg text-center text-lg font-medium text-neutral-400">
				A list of all my projects that I've made across the years. Some successful some not. In the
				end it has helped me find passion for <span
					class="bg-gradient-to-r from-neutral-400 to-stone-50 bg-clip-text text-transparent"
					>web development</span
				>
			</p>
		</div>
		<button
			class="font-nunito mx-auto rounded-md bg-gradient-to-r from-blue-600 to-blue-500 px-4 py-2 text-stone-50 transition-colors duration-150 ease-in-out hover:bg-blue-500"
			onclick={handleClick}
		>
			View {projects.length - 3}
			{status}
		</button>
	</header>

	<div
		class="flex flex-col flex-wrap items-center justify-center gap-2 md:gap-8 lg:flex-row lg:items-stretch"
	>
		{#each projects as project, i}
			{#if i < noofToShow}
				<span
					in:fly={{ x: 100, duration: 150, delay: i * 50 }}
					out:fly={{ x: 100, duration: 150, delay: (projects.length - 1 - i) * 50 }}
				>
					<Project data={project} />
				</span>
			{/if}
		{/each}
	</div>
</section>
