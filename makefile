.PHONY: docs

docs:
	curl https://raw.githubusercontent.com/LukeHagar/plex-api-spec/main/plex-media-server-spec-dereferenced.yaml > plex-media-server-spec-dereferenced.yaml
	npx @mintlify/scraping@latest openapi-file ./plex-media-server-spec-dereferenced.yaml -o api-reference