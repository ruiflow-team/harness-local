# Project Checkup Feedback（v0.26.1）

`./harness project-checkup-feedback` 会在本地生成反馈模板，帮助用户整理 Project Checkup 的使用反馈。

它不会自动上传，不是客服系统，不是 SLA 承诺。

## 命令

```bash
./harness project-checkup
./harness project-checkup-feedback
```

## 输出

```text
dist/evidence/PROJECT-CHECKUP-FEEDBACK/
  project-checkup-feedback-template.json
  PROJECT-CHECKUP-FEEDBACK.md
  project-checkup-feedback-summary.json
```

## 不要包含

- 源码；
- 凭证、token、API key、cookie、session；
- 客户数据或私人用户数据；
- 原始 `data/feedback.jsonl`；
- 不准备公开的私有仓库链接；
- 含密钥、账单、私聊内容的截图。

## 推荐反馈

- 是否成功运行 `./harness project-checkup`；
- 是否看懂 RED/YELLOW/GREEN；
- 哪个 section 最有用；
- 哪个 section 看不懂；
- 是否愿意下次让 AI 改项目之前再跑一次。

## 边界

公开 issue 或发送给他人前必须先人工脱敏。本模板不证明外部用户验证、客户案例、付费客户或生产可用。
