# 公众号文章｜Harness Local v0.24.4 产品功能介绍

## 标题

把 AI 从聊天变成本地任务流：Harness Local 功能介绍

## 正文

很多 AI 工具的问题不是“不够聪明”，而是太快跳到“直接接手项目”。

Harness Local 想解决的是接手之前的第一步：先在本机做一次项目体检。

它是一个本地优先的 AI Agent 执行工作台。核心功能不是聊天，而是把目标拆成可以执行和检查的任务流。

### 一、本地优先运行

Harness Local 默认运行在本机地址：`http://127.0.0.1:8788`。设计边界是：先在你的电脑上工作，不默认上传项目。

### 二、添加本地项目 workspace

你可以把一个本地项目加入 Harness Local，让它作为 workspace 被检查和管理。

### 三、把目标拆成 task steps

相比只和 AI 聊天，Harness Local 更强调“任务流”。输入目标后，它会生成更具体的 task steps，让后续执行有结构、有检查点。

### 四、只读检查与 safe audit

当前版本重点支持只读检查，例如 git status、git diff summary、safe audit、doctor 检查、release readiness、package QA。

### 五、PASS / WARN / Markdown 报告

检查完成后，Harness Local 会生成本地 Markdown 报告。你可以在页面内查看 PASS / WARN / 下一步建议。

### 六、安全默认值

默认 `127.0.0.1`；不默认上传项目文件；不执行 destructive command；不读取凭证文件；不保存明文 API Key；optional plugins 默认关闭。

一句话：先本地体检，再决定下一步。
