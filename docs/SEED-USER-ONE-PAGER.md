# Harness Local v0.24 Beta｜产品功能一页说明

时间：2026-06-13 GMT+8  
状态：小范围 Beta 试用；未公开发布

## 这是什么

Harness Local 是一个本地优先的 AI Agent 执行工作台。

一句话：在你的电脑上，把 AI 从聊天变成可验证的任务流。

它当前可以帮你：

- 添加本地项目 workspace
- 创建任务并拆成 task steps
- 做只读 git status / diff summary
- 生成 safe audit Markdown 报告
- 在页面内查看报告
- 做 Release readiness / Package QA 检查

## 安全边界

当前 beta 默认：

- 只监听 `127.0.0.1`
- 不上传你的项目文件
- 不读取凭证文件
- 不保存明文 API key
- 不执行破坏性命令
- 不默认自动改代码
- optional demo plugins 默认关闭

## 安装启动

拿到文件：

```text
harness-local-v0.24.5-beta.zip
```

SHA256：

```text
7fc0949caf12558942b7cfb45240b3895b94e74e018971dc3185c4886b2df646
```

解压并启动：

```bash
unzip harness-local-v0.24.5-beta.zip
cd harness-local-v0.24.5-beta
./harness serve
```

打开浏览器：

```text
http://127.0.0.1:8788
```

如果 8788 端口被占用：

```bash
HARNESS_PORT=8789 ./harness serve
```

如果想使用隔离数据目录：

```bash
HARNESS_DATA_DIR=/tmp/harness-local-data ./harness serve
```

## 首次自检

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

## 3 分钟试用步骤

1. 打开 Dashboard。
2. Add workspace：添加一个你本地的普通项目目录。
3. Create task：输入“生成只读 safe audit 报告”。
4. 点击 Safe audit。
5. 在 Reports 里点击 View inline 查看 Markdown 报告。
6. 打开 Release / Package 区域，看 Package QA 状态。

## 请反馈 6 个问题（脱敏）

1. 你是否能顺利启动？如果不能，卡在哪一步？
2. 你是否能理解 Harness Local 是干什么的？
3. 哪个功能对你最有价值？
4. 哪个步骤最卡/最不清楚？
5. 你希望下一版自动做什么？
6. 如果正式版定价 ¥49/月或 ¥199 买断，你会不会付费？为什么？

## 当前不承诺

- 不承诺 100% 自动完成所有工作。
- 不承诺替代工程师。
- 不默认联网读取项目。
- 不默认自动改代码。
- 不默认执行破坏性命令。
- 不作为企业级多人协作 SaaS 发布。


## 脱敏反馈包

如遇安装或自检问题，可运行 `./harness feedback-bundle` 生成本地脱敏反馈包；公开提交前请先人工检查。
