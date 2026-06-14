# Harness Local v0.25.4 Beta｜产品功能一页说明

状态：公开 Beta；本地优先的 AI 项目体检工具

## 这是什么

Harness Local 是一个本地优先的 AI 项目体检工具。

一句话：在你的电脑本地，先检查 AI 项目的安全边界、启动状态、发布准备度和反馈材料是否可安全分享。

它当前可以帮你：

- 启动本地面板，默认 `127.0.0.1`
- 做 release readiness / package QA 检查
- 运行 `./harness doctor` 输出三层诊断：`must_fix` / `should_fix` / `can_ignore`
- 运行 `./harness doctor-report` 生成 Markdown 体检报告
- 运行 `./harness feedback-bundle` 生成本地脱敏反馈包，包含 `DOCTOR-REPORT.md`
- 在提交反馈前明确哪些文件可分享，哪些不能分享

## 安全边界

默认边界：

- 只监听 `127.0.0.1`
- 不默认上传项目文件
- 不读取凭证文件
- 不保存明文 API key
- 不执行破坏性命令
- 不默认自动改代码
- 反馈包不包含源码、密钥、原始反馈 JSONL 或客户数据

## 安装启动

下载：

```text
harness-local-v0.25.4-beta.zip
```

SHA256：

```text
671e3ef69f40820885d681921f0f26d59cc0d4109e75f745d1eafa8d50cbab1f
```

解压并启动：

```bash
unzip harness-local-v0.25.4-beta.zip
cd harness-local-v0.25.4-beta
./harness serve
```

打开浏览器：

```text
http://127.0.0.1:8788
```

## 本地体检命令

```bash
./harness smoke-empty
./harness doctor
./harness doctor-report
./harness feedback-bundle
```

## 反馈建议

欢迎提交安装、启动、自检或使用问题，用来决定后续优先级。

请避免上传：

- 源码
- 密钥 / token / key
- 客户数据
- 原始 `data/feedback.jsonl`
- 私有路径或内部工作目录截图

## 当前不承诺

- 不承诺自动完成所有工程任务
- 不承诺替代工程师
- 不默认联网读取项目
- 不默认自动改代码
- 不默认执行破坏性命令
- 不作为企业级多人协作 SaaS 发布
