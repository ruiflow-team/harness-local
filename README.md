[![Release](https://img.shields.io/badge/release-v0.24.2--beta-2ECFB0)](https://github.com/ruiflow-team/harness-local/releases/tag/v0.24.2-beta)
[![Pages](https://img.shields.io/badge/pages-live-5AA9D6)](https://ruiflow-team.github.io/harness-local/)
[![Public Check](https://github.com/ruiflow-team/harness-local/actions/workflows/public-check.yml/badge.svg)](https://github.com/ruiflow-team/harness-local/actions/workflows/public-check.yml)
[![Local First](https://img.shields.io/badge/default-127.0.0.1-667EEA)](#安全边界)

# Harness Local

**本地 AI 项目体检工具｜v0.24.2 Beta**

Harness Local 帮你在电脑本地启动一个轻量 AI 项目工作台，先做项目接入前的安全边界、启动状态和交付准备度检查。

当前版本是 Beta：默认中文面板、默认中文说明、默认本地运行、默认绑定 `127.0.0.1`。

官网说明页：<https://ruiflow-team.github.io/harness-local/>

## v0.24.2 更新

- 主面板中文优先：总览 / 项目 / 任务 / 证据 / 发布 / 安装包 QA / 发布中心。
- 保留本地优先边界：默认 `127.0.0.1`，不默认上传项目。

## 快速开始

一键安装：

```bash
curl -L https://ruiflow-team.github.io/harness-local/install.sh | sh
```

手动下载：

```bash
curl -L -o harness-local-v0.24.2-beta.zip \
  https://github.com/ruiflow-team/harness-local/releases/download/v0.24.2-beta/harness-local-v0.24.2-beta.zip

shasum -a 256 harness-local-v0.24.2-beta.zip
unzip harness-local-v0.24.2-beta.zip
cd harness-local-v0.24-beta
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

- Release：<https://github.com/ruiflow-team/harness-local/releases/tag/v0.24.2-beta>
- Package：`harness-local-v0.24.2-beta.zip`
- SHA256：`e609a51ac024288967fbbbb14dd4107148bcf2eebadc9c293c4491c2bbf10ea9`

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

## 反馈

我们正在收集第一批真实用户反馈，用来决定 v0.25 优先级。

提交反馈：<https://github.com/ruiflow-team/harness-local/issues/new/choose>

## 视觉资产

- App 标识：[`assets/harness-local-mark.svg`](assets/harness-local-mark.svg)
- 微信/社媒横图：[`assets/social/og-harness-local.png`](assets/social/og-harness-local.png)
- 抖音封面图：[`assets/social/douyin-cover-harness-local.png`](assets/social/douyin-cover-harness-local.png)
