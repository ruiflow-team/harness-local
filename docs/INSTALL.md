# Harness Local v0.24 Beta Release / Install Guide

时间：2026-06-12 GMT+8  
状态：Internal beta candidate；未对外发布。

## 一句话

Harness Local 是本地优先的 AI Agent 执行工作台：在你的电脑上添加项目、创建任务、运行只读检查、生成报告和 beta 包 QA。

## 安全默认值

- 默认绑定 `127.0.0.1`，本机访问。
- 不默认上传项目文件。
- 不读取凭证文件。
- 不保存明文 API key。
- 不执行破坏性命令。
- optional demo plugins 默认 disabled。
- 分享 zip 前必须 Package QA PASS。

## 1. 下载 / 拿到 beta zip

当前内部候选包：

```text
harness-local-v0.24-beta.zip
```

如果在本机 dashboard 中构建：

```text
Dashboard → Beta packaging → Build beta zip → Verify latest zip
```

或打开：

```text
http://127.0.0.1:8788/package-qa
```

确认 QA verdict 是 `PASS` 后再分享。

## 2. 解压

```bash
unzip harness-local-v0.24-beta.zip
cd harness-local-v0.24-beta
```

## 3. 启动

```bash
./harness serve
```

打开：

```text
http://127.0.0.1:8788
```

如果 8788 被占用：

```bash
HARNESS_PORT=8789 ./harness serve
```

## 4. 首次 Smoke

```bash
./harness smoke-empty
```

期望看到：

```json
{
  "status": "PASS",
  "version": "0.24",
  "empty_workspaces": 0,
  "empty_tasks": 0,
  "release_readiness_status": "PASS"
}
```

## 5. 3 分钟试用流程

1. 打开 dashboard。
2. Add workspace：填一个本地项目路径。
3. Create task：输入“生成只读 safe audit 报告”。
4. 点 Safe audit。
5. 在 Reports 中点 View inline 查看 Markdown 报告。
6. 去 Release / Package 区域确认 Package QA PASS。

## 6. Package QA 看什么

Package QA 会检查：

- zip 文件存在。
- sha256 与 package index 一致。
- zip 内路径没有内部/敏感 token。
- zip 是单根目录结构。
- 必需文件存在：`README.md`、`harness`、`app/server.py`、`app/static/index.html`、`RELEASE-MANIFEST.json`。
- 内嵌 manifest 版本与当前版本一致。

## 7. 常见问题

### 1）打不开网页

确认 server 还在运行：

```bash
curl http://127.0.0.1:8788/health
```

### 2）端口被占用

换端口：

```bash
HARNESS_PORT=8789 ./harness serve
```

### 3）为什么没有联网 AI 自动执行？

v0.24 是 local-first beta。基础功能不需要 API key。联网模型、写文件、插件执行都必须后续显式启用，默认关闭。

### 4）可以直接对外发布吗？

不可以。当前是内部 beta candidate。对外发布、官网/公众号/公开承诺仍需董事长明确授权。

## 8. Release Gate

分享前最低门槛：

```text
./harness smoke-empty                         PASS
Dashboard Release readiness                  PASS
Package QA                                   PASS
Unzip 后独立运行 smoke-empty                 PASS
```


## v0.13 新增

- `/release` 升级为一页式 Release Center：Package、QA、Install Guide、Download、Checklist 四件套。
- 新增 `./harness package-verify`，无需打开网页也能校验最新 beta zip。


## v0.14 新增

- `./harness package-build`：无浏览器构建 beta zip。
- `./harness candidate` / `./harness candidate-lock`：查看或锁定 Release Candidate。
- Release Center 增加 Copy CLI、Copy SHA、Copy install command。
- `RELEASE-CANDIDATE.json` 固化当前包名、sha、QA 时间、readiness 和 manifest 信息，避免口径漂移。


### RC lock 是 zip 外部独立 artifact

`RELEASE-CANDIDATE.json` 不打入同一个 beta zip，原因是它记录 beta zip 的 sha256；若把它再打进 zip，会改变 zip sha，形成自引用循环。网页端访问：`/release-candidate.json`。


## v0.24 新增

- `./harness doctor [zip_path]`：一次性检查 Python、项目根、server、readiness、package、QA、RC、端口、guide；解压包可指定外部 zip。
- `./harness open`：自动启动本地 server 并打开浏览器。
- Release Center 增加 Doctor 状态与 First-run health JSON。
