#!/bin/sh

# resolve dir
target="$(cd "$(dirname "$0")" && pwd)"

echo "virgo ♍︎"
echo "rust crate management for vim"
echo "installing into $target"

# detect arch
arch=$(uname -m)

case "$arch" in
    x86_64) bin="virgo-x86" ;;
    aarch64) bin="virgo-arm64" ;;
    armv7l|armv6l) bin="virgo-arm" ;;
    riscv64) bin="virgo-riscv" ;;
    *)
        echo "unsupported arch: $arch"
        exit 1
        ;;
esac

echo "detected arch: $arch"
echo "using binary: $bin"

# ensure bin dir exists
mkdir -p "$target/bin"

# copy correct binary
cp "$target/arch/$bin" "$target/bin/virgo"
chmod +x "$target/bin/virgo"

echo "virgo installed for $arch."
