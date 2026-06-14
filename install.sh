#!/usr/bin/env sh
set -eu

VERSION="v0.26.3-beta"
FILE="harness-local-v0.26.3-beta.zip"
SHA256="aa0b45ced035f1bed4ab017167ee399892632d4b2350c71dbda45ee6e5793004"
BASE_URL="https://github.com/ruiflow-team/harness-local/releases/download/${VERSION}"
INSTALL_DIR="${HARNESS_INSTALL_DIR:-$PWD}"

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || {
    echo "Missing required command: $1" >&2
    exit 1
  }
}

need_cmd curl
need_cmd unzip

mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR"

echo "Downloading ${FILE}..."
curl -L -o "$FILE" "${BASE_URL}/${FILE}"

if command -v shasum >/dev/null 2>&1; then
  actual="$(shasum -a 256 "$FILE" | awk '{print $1}')"
elif command -v sha256sum >/dev/null 2>&1; then
  actual="$(sha256sum "$FILE" | awk '{print $1}')"
else
  echo "WARNING: no shasum/sha256sum found; skipping checksum verification" >&2
  actual="$SHA256"
fi

if [ "$actual" != "$SHA256" ]; then
  echo "Checksum mismatch" >&2
  echo "expected: $SHA256" >&2
  echo "actual:   $actual" >&2
  exit 1
fi

echo "Checksum OK"
rm -rf harness-local-v0.26.3-beta
unzip -q "$FILE"

echo "Installed to: $INSTALL_DIR/harness-local-v0.26.3-beta"
echo "Run:"
echo "  cd '$INSTALL_DIR/harness-local-v0.26.3-beta'"
echo "  ./harness serve"
echo "Open: http://127.0.0.1:8788"
