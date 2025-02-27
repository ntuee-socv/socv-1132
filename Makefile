all: build

build:
	cmake -S . -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_BUILD_TYPE=Build
	$(MAKE) -C build -j 8 --no-print-directory

debug:
	cmake -S . -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_BUILD_TYPE=Debug
	$(MAKE) -C build -j 8

clean:
	cmake --build build --target clean
	rm -rf bin
#	rm -rf build

.PHONY: all build release debug clean 
