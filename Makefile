SHELL := /bin/bash

.PHONY: lab
lab:
	@cd build && \
	cmake .. && \
	make

# mkdir build && \
# rm -rf build && \