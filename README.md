[![Release](https://img.shields.io/badge/release-v0.24.1--beta-2ECFB0)](https://github.com/ruiflow-team/harness-local/releases/tag/v0.24.1-beta)
[![Pages](https://img.shields.io/badge/pages-live-5AA9D6)](https://ruiflow-team.github.io/harness-local/)
[![Public Check](https://github.com/ruiflow-team/harness-local/actions/workflows/public-check.yml/badge.svg)](https://github.com/ruiflow-team/harness-local/actions/workflows/public-check.yml)
[![Local First](https://img.shields.io/badge/default-127.0.0.1-667EEA)](#safety-defaults)

# Harness Local v0.24 Beta

Harness Local is a local-first AI Agent execution workbench.

一句话：在你的电脑上，把 AI 从聊天变成可验证的任务流。

## Download

- Package: `harness-local-v0.24.1-beta.zip`
- SHA256: `6a2ba60462ab50a4130920075c35dc3dcd0760246899caa112ac807f31cbb2d0`

GitHub Release download is recommended after the `v0.24.1-beta` release is created.


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
unzip harness-local-v0.24.1-beta.zip
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



## Visual Assets

- App mark: [`assets/harness-local-mark.svg`](assets/harness-local-mark.svg)
- OpenGraph image: [`assets/social/og-harness-local.png`](assets/social/og-harness-local.png)
- Douyin cover: [`assets/social/douyin-cover-harness-local.png`](assets/social/douyin-cover-harness-local.png)

## Seed User Launch Materials

- WeChat seed-user post draft: [`docs/marketing/WECHAT-SEED-USER-POST-v0.24.1.md`](docs/marketing/WECHAT-SEED-USER-POST-v0.24.1.md)
- Douyin short-video script: [`docs/marketing/DOUYIN-SHORT-SCRIPT-v0.24.1.md`](docs/marketing/DOUYIN-SHORT-SCRIPT-v0.24.1.md)
- Seed-user DM templates: [`docs/marketing/SEED-USER-DM-TEMPLATES-v0.24.1.md`](docs/marketing/SEED-USER-DM-TEMPLATES-v0.24.1.md)

## Feedback

Seed user feedback is collected through GitHub Issues:

<https://github.com/ruiflow-team/harness-local/issues/new/choose>

Please do not paste secrets, API keys, private source code, or customer data.
