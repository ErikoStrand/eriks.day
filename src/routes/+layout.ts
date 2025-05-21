import projects from '$lib/data/projects.json';
export function load({ url }) {
	return {
		url: url.pathname,
		projects: JSON.stringify(projects)
	};
}
