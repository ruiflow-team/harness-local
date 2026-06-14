# Harness Local Configuration

## Runtime Requirements

- Python 3.9+
- macOS / Linux recommended for beta
- Browser access to `http://127.0.0.1:<port>`

No database, cloud service, or API key is required for the basic local beta flow.

## Environment Variables

### `HARNESS_PORT`

Default: `8788`

Use another port when 8788 is already occupied:

```bash
HARNESS_PORT=8789 ./harness serve
```

### `HARNESS_DATA_DIR`

Default: `./data` under the extracted package directory.

Use an isolated data directory:

```bash
HARNESS_DATA_DIR=/tmp/harness-local-data ./harness serve
```

This is useful for tests, demos, or keeping beta data separate from the package directory.

## Local Access

Harness Local is designed to run locally:

```text
http://127.0.0.1:8788
```

Do not expose the beta server to the public internet. If you need remote access, use an authenticated tunnel or VPN and review the security boundary first.

## First Run Checklist

```bash
./harness smoke-empty
./harness doctor
```

Expected status: `PASS`.

## Package Verification

From the extracted directory:

```bash
shasum -a 256 ../harness-local-v0.24.6-beta.zip
```

Expected SHA256:

```text
3b3bf17cd9bf2356f6d4f9ac44f5b04a1fa0e09875baf7831635f26bfabc0db3
```


## Feedback Bundle

`./harness feedback-bundle` 只在本机 `dist/evidence/TRIAL-BUNDLE/` 生成脱敏反馈包，不上传、不复制原始反馈 JSONL。
