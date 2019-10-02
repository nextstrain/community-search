SHELL := /bin/bash -euo pipefail

community.tsv: community.ndjson
	./totsv $< > $@.new
	mv -v $@.new $@

community.ndjson:
	./find > $@.new
	mv -v $@.new $@
