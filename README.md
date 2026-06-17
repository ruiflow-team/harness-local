[![Release](https://img.shields.io/badge/release-v0.26.3--beta-2ECFB0)](https://github.com/ruiflow-team/harness-local/releases/tag/v0.26.3-beta)
[![License](https://img.shields.io/badge/license-Apache%202.0-667EEA)](LICENSE)
[![Pages](https://img.shields.io/badge/pages-live-5AA9D6)](https://ruiflow-team.github.io/harness-local/)
[![Public Check](https://github.com/ruiflow-team/harness-local/actions/workflows/public-check.yml/badge.svg)](https://github.com/ruiflow-team/harness-local/actions/workflows/public-check.yml)
[![¥0](https://img.shields.io/badge/启动成本-¥0-FF8C00)](#-%E5%BF%AB%E9%80%9F%E5%BC%80%E5%A7%8B)
[![Local First](https://img.shields.io/badge/default-127.0.0.1-667EEA)](#%E5%AE%89%E5%85%A8%E8%BE%B9%E7%95%8C)
[![Discussions](https://img.shields.io/github/discussions/ruiflow-team/harness-local?color=5AA9D6)](https://github.com/ruiflow-team/harness-local/discussions)

# Harness Local

**本地 AI 项目体检工具｜v0.26.3 Beta**

Harness Local 帮你在电脑本地启动一个轻量 AI 项目工作台，先做项目接入前的安全边界、启动状态和交付准备度检查。

当前版本是 Beta：默认中文面板、默认中文说明、默认本地运行、默认绑定 `127.0.0.1`。

> 🛡️ **可看作 AI 项目的「发走前诊所」**：AI 项目发上线前，先跑 `./harness doctor` 看安全/启动/交付准备度，避免带货上架。
>
> ⭐ 如果对你有帮助，点个 Star 让更多人看见～

## 🎯 为什么选 Harness Local

| 其他方案 | Harness Local |
|---|---|
| 云端 AI 平台 = 上传你的项目代码 | **100% 本地，`127.0.0.1` 默认绑定** |
| 人工 code review = 贵 + 慢 | **自动体检，三层诊断 must_fix / should_fix / can_ignore** |
| pre-commit hooks = 单点检查 | **全项目体检报告 + 脱敏反馈包** |
| 生产环境事后补救 | **发上线前提前发现安全/启动/发布问题** |


官网说明页：<https://ruiflow-team.github.io/harness-local/>

## v0.26.3 更新

- 新增 `./harness doctor` 三层诊断：`must_fix` / `should_fix` / `can_ignore`，让自检结果更像发布前体检报告。
- 新增 `./harness doctor-report`：输出 Markdown 体检报告，便于本地自查和反馈前人工检查。
- 增强 `./harness feedback-bundle`：生成本地脱敏反馈包，并包含 `DOCTOR-REPORT.md`；不包含源码、密钥或原始反馈 JSONL。
- 保持主面板中文优先：总览 / 项目 / 任务 / 证据 / 发布 / 安装包 QA / 发布中心。
- 保留本地优先边界：默认 `127.0.0.1`，不默认上传项目。


## Start Here

第一次使用请从 [`docs/START-HERE.md`](docs/START-HERE.md) 开始：先看样张，再跑本地体检，最后整理安全反馈。

```bash
./harness project-checkup-sample-report
./harness project-checkup
./harness project-checkup-feedback
```

## AI 项目体检所 / Project Checkup

Harness Local v0.26.3 新增 `./harness project-checkup`：在本地生成 AI 项目体检包，包含 Markdown 报告、JSON 合同、安全分享清单和 share contract。

- 三分钟教程：[`docs/QUICK-CHECKUP.md`](docs/QUICK-CHECKUP.md)
- Schema：[`docs/PROJECT-CHECKUP-SCHEMA.md`](docs/PROJECT-CHECKUP-SCHEMA.md)
- Feedback：[`docs/PROJECT-CHECKUP-FEEDBACK.md`](docs/PROJECT-CHECKUP-FEEDBACK.md)
- Sample：[`docs/PROJECT-CHECKUP-SAMPLE.md`](docs/PROJECT-CHECKUP-SAMPLE.md) · [`HTML`](docs/PROJECT-CHECKUP-SAMPLE.html)
- 边界：不是安全审计认证、不是客户案例、不是外部验证、不是生产可用证明。

```bash
./harness project-checkup
./harness project-checkup-feedback
./harness project-checkup-sample-report
```

## 快速开始

一键安装：

```bash
curl -L https://ruiflow-team.github.io/harness-local/install.sh | sh
```

手动下载：

```bash
curl -L -o harness-local-v0.26.3-beta.zip \
  https://github.com/ruiflow-team/harness-local/releases/download/v0.26.3-beta/harness-local-v0.26.3-beta.zip

shasum -a 256 harness-local-v0.26.3-beta.zip
unzip harness-local-v0.26.3-beta.zip
cd harness-local-v0.26.3-beta
./harness serve
```

浏览器打开：

```text
http://127.0.0.1:8788
```

自检：

```bash
./harness smoke-empty
./harness doctor
```

## 下载校验

- Release：<https://github.com/ruiflow-team/harness-local/releases/tag/v0.26.3-beta>
- Package：`harness-local-v0.26.3-beta.zip`
- SHA256：`aa0b45ced035f1bed4ab017167ee399892632d4b2350c71dbda45ee6e5793004`

## 配置

修改端口：

```bash
HARNESS_PORT=8789 ./harness serve
```

指定隔离数据目录：

```bash
HARNESS_DATA_DIR=/tmp/harness-local-data ./harness serve
```

更多配置：[`docs/CONFIGURATION.md`](docs/CONFIGURATION.md)

## 安全边界

当前 beta 默认策略：

- 默认绑定 `127.0.0.1`
- 不默认上传项目
- 不读取凭证文件
- 不保存明文 API Key
- 不执行破坏性命令
- optional plugins 默认关闭

请不要在公开 issue 中粘贴密钥、私有源码或客户数据。

## 脱敏反馈包

遇到安装、自检或页面问题时，可在本机生成脱敏反馈包：

```bash
./harness feedback-bundle
```

输出目录：`dist/evidence/FEEDBACK-BUNDLE/`。请先人工检查 `README.md`、`FEEDBACK-SUMMARY.md`、`DOCTOR-REPORT.md`、`doctor.json`，确认没有密钥、私有源码、原始反馈 JSONL 或客户数据，再提交公开 issue。

## 反馈

欢迎提交安装、启动、自检或使用问题，用来决定 v0.25 优先级。

提交反馈：<https://github.com/ruiflow-team/harness-local/issues/new/choose>

## 视觉资产

- App 标识：[`assets/harness-local-mark.svg`](assets/harness-local-mark.svg)
- 微信/社媒横图：[`assets/social/og-harness-local.png`](assets/social/og-harness-local.png)
- 抖音封面图：[`assets/social/douyin-cover-harness-local.png`](assets/social/douyin-cover-harness-local.png)


## v0.26.3 Beta：Doctor 体检报告

v0.26.3 Beta 新增：

- `./harness doctor` 输出 `diagnosis` 三层体检：`must_fix` / `should_fix` / `can_ignore`。
- `./harness doctor-report` 输出 Markdown 体检报告，适合本地自查与反馈前人工检查。
- `./harness feedback-bundle` 新增 `DOCTOR-REPORT.md`，继续保持本地生成、不上传、不包含源码/密钥/原始反馈 JSONL。

候选包：`harness-local-v0.26.3-beta.zip`
SHA256：`aa0b45ced035f1bed4ab017167ee399892632d4b2350c71dbda45ee6e5793004`


## v0.26.3 Beta：体检报告边界增强

v0.26.3 Beta 在 `doctor-report` 中新增：

- `Release Readiness`：把发布/安装包证据集中列出。
- `Claim Boundary`：明确哪些声明可以说，哪些不能说。
- `Safe Share Checklist`：提醒分享反馈包前人工检查源码、凭证、客户数据和原始反馈 JSONL。

候选包：`harness-local-v0.26.3-beta.zip`
SHA256：`aa0b45ced035f1bed4ab017167ee399892632d4b2350c71dbda45ee6e5793004`


## v0.26.3 Beta：机器可读声明边界

v0.26.3 Beta 在 `./harness doctor` JSON 中新增机器可读结构：

- `release_readiness`
- `claim_boundary`
- `safe_share_checklist`
- `share_contract`

这些字段让 `doctor` 不只输出可读报告，也能被脚本/CI 读取，用于检查：本地报告不能单独证明外部真实用户验证、收费成交或生产级可用。

候选包：`harness-local-v0.26.3-beta.zip`
SHA256：`aa0b45ced035f1bed4ab017167ee399892632d4b2350c71dbda45ee6e5793004`


## v0.26.3 Beta：内置脱敏体检样张

v0.26.3 Beta 新增：

```bash
./harness checkup-sample
```

该命令会在本机生成脱敏示例：

- `dist/evidence/CHECKUP-SAMPLE/checkup-sample.json`
- `dist/evidence/CHECKUP-SAMPLE/CHECKUP-SAMPLE.md`

用途：展示 `release_readiness / claim_boundary / safe_share_checklist / share_contract` 如何组合成一个 AI 项目体检样张。样张不是客户案例，也不是外部真实用户验证。

候选包：`harness-local-v0.26.3-beta.zip`
SHA256：`aa0b45ced035f1bed4ab017167ee399892632d4b2350c71dbda45ee6e5793004`


## v0.26.3 Beta：checkup-sample schema 文档化

v0.26.3 Beta 补齐了 `./harness checkup-sample` 的字段说明和安全解读规则：

- 新增 `docs/CHECKUP-SAMPLE-SCHEMA.md`
- `checkup-sample.json` schema 更新为 `harness-checkup-sample-v0.26.3`
- `share_contract.version` 更新为 `share-contract-v0.26.3`

候选包：`harness-local-v0.26.3-beta.zip`
SHA256：`aa0b45ced035f1bed4ab017167ee399892632d4b2350c71dbda45ee6e5793004`
