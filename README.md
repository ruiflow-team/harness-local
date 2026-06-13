# Harness Local v0.24 Beta

Harness Local is a local-first AI Agent execution workbench.

一句话：在你的电脑上，把 AI 从聊天变成可验证的任务流。

## Download

- Package: `harness-local-v0.24-beta.zip`
- SHA256: `a1e5ffc2eccb5dd836a38f82eb75bec831c29e8407e756ade143ab4ea1e83805`

GitHub Release download is recommended after the `v0.24-beta` release is created.


## One-line Installer

```bash
curl -L https://ruiflow-team.github.io/harness-local/install.sh | sh
```

Install into a custom directory:

```bash
curl -L https://ruiflow-team.github.io/harness-local/install.sh | HARNESS_INSTALL_DIR=/tmp sh
```

## Quick Start

```bash
unzip harness-local-v0.24-beta.zip
cd harness-local-v0.24-beta
./harness serve
```

Open:

```text
http://127.0.0.1:8788
```

If port 8788 is occupied:

```bash
HARNESS_PORT=8789 ./harness serve
```

Use an isolated data directory:

```bash
HARNESS_DATA_DIR=/tmp/harness-local-data ./harness serve
```

Smoke test:

```bash
./harness smoke-empty
```

Expected:

```json
{
  "status": "PASS",
  "version": "0.24",
  "empty_workspaces": 0,
  "empty_tasks": 0,
  "release_readiness_status": "PASS"
}
```

## Safety Defaults

- Binds to `127.0.0.1` by default.
- Does not upload project files by default.
- Does not read credential files.
- Does not store plaintext API keys.
- Does not execute destructive commands.
- Optional demo plugins are disabled by default.

## Docs

- [Install Guide](docs/INSTALL.md)
- [Seed User One Pager](docs/SEED-USER-ONE-PAGER.md)

## Current Beta Boundary

This beta does **not** promise:

- 100% automatic project completion
- Replacing engineers
- Default cloud processing of local projects
- Default code modification
- Default destructive command execution
- Enterprise multi-user SaaS features
