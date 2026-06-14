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
./harness doctor-report
```

Expected status: `PASS`.

## Package Verification

From the extracted directory:

```bash
shasum -a 256 ../harness-local-v0.26.0-beta.zip
```

Expected SHA256:

```text
a67a5a280bfae6a87eada3d0cfac804f91b04745a9a2b23a782415233f6072b0
```


## Feedback Bundle

`./harness feedback-bundle` 只在本机 `dist/evidence/FEEDBACK-BUNDLE/` 生成脱敏反馈包，并包含 `DOCTOR-REPORT.md`；不上传、不复制原始反馈 JSONL、源码、密钥或客户数据。
