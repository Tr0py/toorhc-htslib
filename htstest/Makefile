hellohts: hellohts.c
	gcc -g -O2 -o $@ $^ -lhts -llzma -lbz2 -lz -lm -pthread

clean:
	rm -f hellohts

run:
	LD_LIBRARY_PATH=../install/iv/lib ~/IV ~/glib ./hellohts -c ../poc/PoC-stack.cram
