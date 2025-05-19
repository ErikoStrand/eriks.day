<script>
	import Github from '$lib/svgs/Github.svelte';
	import Linkedin from '$lib/svgs/Linkedin.svelte';
	import Instagram from '$lib/svgs/Instagram.svelte';
	import ClickToCopy from './ClickToCopy.svelte';
	const d = new Date();
	const year = d.getFullYear();
</script>

<span class="">
	<div
		class="mx-auto mt-16 h-16 max-w-7xl bg-radial-[at_50%_100%] from-neutral-700/50 to-neutral-900 to-75%"
	></div>
	<div class="h-1 border-t-[1px] border-neutral-700"></div>
	<footer class="mx-auto mt-4 flex max-w-5xl flex-col gap-6 p-2 *:text-stone-50 md:p-8">
		<div
			class="flex flex-col justify-between gap-6 border-b-[1px] border-neutral-800 pb-6 md:flex-row"
		>
			<section class="flex flex-col gap-2 md:max-w-[235px]">
				<h1 class="font-nunito text-lg font-semibold">Erik - Everything Developer</h1>
				<p class="text-base font-normal text-neutral-400">
					Decision making machine that drives the development the of tomorrow.
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
		</div>
		<div class="text-sm">
			<h3 class="text-neutral-400">© {year} All rights reserved.</h3>
		</div>
	</footer>
</span>
