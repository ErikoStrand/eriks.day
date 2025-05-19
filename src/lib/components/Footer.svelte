<script>
	import Github from '$lib/svgs/Github.svelte';
	import Linkedin from '$lib/svgs/Linkedin.svelte';
	import Instagram from '$lib/svgs/Instagram.svelte';
	import ClickToCopy from './ClickToCopy.svelte';
</script>

<span class="">
	<div
		class="mx-auto mt-16 h-16 max-w-7xl bg-radial-[at_50%_100%] from-neutral-700/50 to-neutral-900 to-75%"
	></div>
	<div class="h-1 border-t-[1px] border-neutral-700"></div>
	<footer
		class="mx-auto flex max-w-5xl flex-col justify-between gap-6 p-2 *:text-stone-50 md:flex-row md:p-8"
	>
		<section class="flex flex-col gap-2 md:max-w-[205px]">
			<h1 class="font-nunito font-semibold">Erik - Everything Developer</h1>
			<p class="text-neutral-400">
				Making interesting decisions that drive what his life will be in the future.
			</p>
			<nav class="flex flex-row gap-3">
				<a href="https://github.com/ErikoStrand" target="_blank"
					><Github class={'size-6 fill-stone-300'} /></a
				><a href="https://www.linkedin.com/in/erik-strandberg-59828a23a/" target="_blank"
					><Linkedin class={'size-6 fill-stone-300'} /></a
				><a href="https://www.instagram.com/erikostrand/" target="_blank"
					><Instagram class={'size-6 fill-stone-300'} /></a
				>
			</nav>
		</section>
		<section class="flex flex-col gap-3">
			<span>
				<h1 class="font-nunito font-semibold">Get in Touch</h1>
				<p class="text-neutral-400">Ready to start your next chapter?</p>
			</span>
			<ClickToCopy copyText={'mail@eriks.day'} title={'Copy Email'} message={'Copied!'}
			></ClickToCopy>
		</section>
	</footer>
</span>
