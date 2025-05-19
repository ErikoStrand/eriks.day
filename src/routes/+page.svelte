<script lang="ts">
	import { innerWidth } from 'svelte/reactivity/window';
	import AccordianGroup from '$lib/components/AccordianGroup.svelte';
	import CircleWavy from '$lib/svgs/Circle_Wavy.svelte';
	import ClickToCopy from '$lib/components/ClickToCopy.svelte';
	let faq = [
		[
			{
				title: 'What is this website?',
				description:
					"It's my digital realm of the collection of my works, projects, life achivements and most of the things I've done that people might want to know about me"
			},
			{
				title: 'Do you ensure responsive design?',
				description:
					'Yes, I always do my best to make sure that my platforms work on all the standard devices.'
			},
			{
				title: 'What are you most scared of?',
				description:
					"I'm really afraid of dying alone, and I think I'm not alone in this. Life is precious and we should really be kind to each other we never know what they are going through."
			}
		],
		[
			{
				title: 'What services do you offfer?',
				description:
					'I offer whatever you want me to do. I can develop websites, create personalized experiences, can give backrubs, I am a decent chef to if you want someone to cook for you.'
			},
			{
				title: 'How much do you weight?',
				description:
					"I weight about 105kg, But I am a big and happy man. Recently I've been grinding DiscGolf which has been really fun."
			},
			{
				title: 'Can you work with anyone?',
				description:
					"As long as you are a decent human being, I can work with you. If you have a opprotunity for me to learn I'm all for it."
			}
		]
	];
</script>

<svelte:head>
	<title>Erik's Day | What is he doing?</title>
	<meta
		name="description"
		content="Erik Strandberg, the guy behind this site. Is a person who likes to program interactive and unique experience. Though he isn't really that sucessful when it comes down to it."
	/>
</svelte:head>
<header class="flex min-h-svh flex-col items-center justify-center p-4 text-white">
	<h1 class="font-alfa mb-4 text-center text-4xl text-stone-50">
		Hello, welcome to eriks<span class="text-blue-500">.day</span>
	</h1>
</header>
<section class="mx-auto flex max-w-5xl flex-col gap-8 p-2 md:p-4">
	<div class=" flex flex-col justify-between gap-4 text-stone-50 *:basis-1/2 md:flex-row">
		<div class="relative z-10 flex flex-col gap-2">
			<h1 class="z-10 flex flex-row flex-wrap gap-2 text-4xl">
				Your Questions <div
					class="animate-gradient inline-block bg-gradient-to-r from-stone-50 via-neutral-700 to-neutral-600 bg-[length:180%_180%] bg-clip-text font-semibold text-transparent"
				>
					Answered
				</div>
				<CircleWavy class={'size-8 self-end fill-neutral-700'}></CircleWavy>
			</h1>
			<p class="z-10 font-semibold text-neutral-400">
				Here you can find answers to some questions people have asked me, if you have any more you
				can contact me!
			</p>
		</div>
	</div>
	<div class="flex grow flex-col gap-3 md:flex-row md:gap-5">
		{#if (innerWidth.current ?? 800) > 768}
			<div class="flex basis-1/2 flex-col gap-3">
				<AccordianGroup faq={faq[0]}></AccordianGroup>
			</div>
			<div class="flex basis-1/2 flex-col gap-3">
				<AccordianGroup faq={faq[1]}></AccordianGroup>
			</div>
		{:else}
			<div class="flex basis-1/2 flex-col gap-3">
				<AccordianGroup faq={faq[0].concat(faq[1])}></AccordianGroup>
			</div>
		{/if}
	</div>
</section>
