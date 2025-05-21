<script>
	import Chevron from '$lib/svgs/Chevron.svelte';
	import Github from '$lib/svgs/Github.svelte';
	import Outgoing from '$lib/svgs/Outgoing.svelte';

	let { data } = $props();
</script>

<article
	class="animate-gradient flex max-w-xl flex-col gap-3 rounded-lg border-[1px] border-neutral-800 bg-gradient-to-br from-neutral-950 to-neutral-800 bg-[length:180%_180%] px-6 py-4 shadow-md"
>
	<div>
		<h2 class="text-lg font-semibold text-stone-50">{data.title}</h2>
		<p class="text-base text-neutral-400">{data.description}</p>
	</div>

	<div class="mt-auto flex flex-row justify-between">
		<div class="flex flex-row">
			<Chevron class="size-5 origin-center rotate-45 text-stone-50"></Chevron>
			<summary class="flex flex-wrap gap-2">
				{#each data.stack as technology}
					<span class=" text-sm font-semibold text-sky-500">{technology}</span>
				{/each}
			</summary>
		</div>
		<div class="flex flex-row gap-1 *:cursor-pointer">
			{#if data.link !== null}
				<a href={data.link} class="flex text-sm font-semibold" rel="noopener" target="_blank"
					><Github
						class="size-5 rounded-md fill-stone-50 transition duration-200 hover:bg-blue-500"
					/>
				</a>
			{/if}
			{#if data.website !== null}
				<a
					href={data.website}
					class="hover flex text-sm font-semibold"
					rel="noopener"
					target="_blank"
					><Outgoing
						class="size-5 self-center rounded-md  fill-stone-50 transition duration-200 hover:bg-blue-500 "
					/>
				</a>
			{/if}
		</div>
	</div>
</article>
