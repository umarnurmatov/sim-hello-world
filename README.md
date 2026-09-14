# Hello World RV64I + qemu-riscv64

## Dependencies

### Debian / Ubuntu

```sh
sudo apt-get install git build-essential gdb-multiarch qemu-system-misc gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu
```

### Arch

```sh
sudo pacman -S riscv64-linux-gnu-binutils riscv64-linux-gnu-gcc riscv64-linux-gnu-gdb qemu-emulators-full bc git base-devel
```

## Build & run

In order to run:
```sh
make run
```

