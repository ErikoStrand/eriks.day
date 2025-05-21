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

<section class="relative mx-auto flex max-w-7xl flex-col gap-8 p-1 md:p-3">
	<div
		class="absolute left-1/2 h-[400px] w-full max-w-3xl -translate-x-1/2 -translate-y-1/4 rounded-full bg-radial from-neutral-700/70 to-transparent to-60%"
	></div>
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
			<p class="font-nunito z-10 max-w-lg text-center text-lg font-medium text-neutral-400">
				A list of all my projects that I've made across the years. Some successful some not. In the
				end it has helped me find passion for <span
					class="bg-gradient-to-r from-neutral-400 to-stone-50 bg-clip-text text-transparent"
					>web development</span
				>
			</p>
		</div>
		<button
			class="font-nunito z-10 mx-auto cursor-pointer rounded-md bg-gradient-to-r from-blue-600 to-blue-500 px-4 py-2 text-stone-50 drop-shadow-md transition duration-200 ease-in-out hover:scale-105"
			onclick={handleClick}
		>
			View {projects.length - 3}
			{status}
		</button>
	</header>

	<div class="z-10 columns-xs gap-4 md:gap-8">
		{#each projects as project, i}
			{#if i < noofToShow}
				<div
					in:fly={{ x: 100, duration: 150, delay: i * 50 }}
					out:fly={{ x: 100, duration: 150, delay: (projects.length - 1 - i) * 50 }}
				>
					<Project data={project} />
				</div>
			{/if}
		{/each}
	</div>
</section>
