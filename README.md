# PlexAPI.dev Mintlify Documentation

This repository powers the [PlexAPI.dev](https://plexapi.dev) documentation site, hosted on [Mintlify](https://mintlify.com/).

## What's inside

- `docs.json` – Mintlify site configuration and navigation.
- `*.mdx` – Documentation pages for the Getting Started section.
- `openapi-with-code-samples.yaml` – OpenAPI specification used to generate the [API Reference](/api-reference).
- `.speakeasy/` – Speakeasy workflow that merges code samples into the OpenAPI spec.

## Local development

Install the [Mintlify CLI](https://www.npmjs.com/package/mintlify):

```bash
npm i -g mintlify
```

Run the local preview server from the repository root:

```bash
mintlify dev
```

## Updating the API reference spec

The API reference is generated from `openapi-with-code-samples.yaml`. To refresh it with the latest Speakeasy code samples, run:

```bash
speakeasy run workflow --source merge-code-samples-into-spec
```

> The canonical OpenAPI specification lives in the [PlexAPI.dev monorepo](https://github.com/LukasParke/plexapi-dev-docs/blob/main/spec/plex-media-server.openapi.json). Updates to the canonical spec are made there; this repository consumes a rendered, sample-rich version for documentation.

## Publishing

This site is deployed through the Mintlify GitHub App. Changes pushed to the default branch are published automatically.

## Contributing

See the [Contributing](./contributing.mdx) page for content style rules, validation commands, and the review process.
