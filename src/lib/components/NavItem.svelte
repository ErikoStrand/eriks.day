<script>
	let { link, name } = $props();
	import { page } from '$app/state';
	let isVisiting = $derived.by(() => {
		return page.url.pathname === link;
	});
</script>

<a class=" hover:text-blue-500 {isVisiting ? 'text-blue-500' : 'text-stone-50'}" href={link}
	>{name}
</a>
