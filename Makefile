default: dev

.PHONY: dev link pull

dev:
	@docker-compose up

link:
	@ln -s $(PWD)/.editorconfig ../.editorconfig

pull:
	@pushd ../ && \
	git clone git@github.com:curated/curated.github.io.git && \
	git clone git@github.com:curated/docs.git && \
	git clone git@github.com:curated/octograph.git && \
	git clone git@github.com:curated/web.git && \
	popd
