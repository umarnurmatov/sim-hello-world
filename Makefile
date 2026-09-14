
EXEC = main.x
SRC  = main.S
OBJ  = $(patsubst %.S,%.o,$(SRC))

.PHONY: run
run: $(EXEC)
	@qemu-riscv64 ./$<

.PHONY: all
all: $(EXEC)

$(EXEC): $(OBJ)
	@riscv64-linux-gnu-ld -static -e _start -o $@ $^

$(OBJ): %.o: %.S
	@riscv64-linux-gnu-as -march=rv64i -mabi=lp64 -o $@ $^

.PHONY: clean
clean:
	@rm $(OBJ)
	@rm $(EXEC)
