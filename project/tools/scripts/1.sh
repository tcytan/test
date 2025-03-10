cd "$(dirname "$0")/../../"

echo "Applying patch to comment out code in container_init_process.rs..."
patch -p2 < "./tools/scripts/container_init_process.patch" || {
    echo "Failed to apply patch"
    exit 1
}