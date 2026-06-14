# Start Here：Project Checkup 10 分钟路径

> 目标：第一次接触 Harness Local / Project Checkup 的用户，不需要理解所有 schema，也能在 10 分钟内跑出本地体检、看懂样张、准备安全反馈。

## 你要先知道的 3 件事

1. Project Checkup 本地运行，不要求上传源码。
2. 它不是安全审计认证，不是客户案例，不是生产可用证明。
3. 它帮你在让 AI 改代码前，看清风险和可分享边界。

## 第 1 步：看样张

```bash
./harness project-checkup-sample-report
```

打开：

```text
dist/evidence/PROJECT-CHECKUP-SAMPLE/PROJECT-CHECKUP-SAMPLE.html
```

你会看到：

- Must Fix
- Should Fix
- Safe to share
- Do not share
- Next action

## 第 2 步：跑自己的本地体检

```bash
./harness project-checkup
```

打开：

```text
dist/evidence/PROJECT-CHECKUP/PROJECT-CHECKUP.md
```

重点看：

- Readiness 是 RED / YELLOW / GREEN；
- Must Fix 有几条；
- Claim Boundary 哪些话不能说；
- Safe Share Checklist 分享前要删什么。

## 第 3 步：准备反馈，不上传隐私

```bash
./harness project-checkup-feedback
```

打开：

```text
dist/evidence/PROJECT-CHECKUP-FEEDBACK/PROJECT-CHECKUP-FEEDBACK.md
```

只反馈：

- 是否跑通；
- 哪一段看不懂；
- 哪一段最有用；
- 你希望下一步判断什么。

不要反馈：

- 源码；
- 凭证 / token / API key；
- 客户数据；
- 私有仓库链接；
- 带敏感信息的截图。

## 推荐顺序

```bash
./harness project-checkup-sample-report
./harness project-checkup
./harness project-checkup-feedback
```

## 如果要公开提交反馈

使用 GitHub Issue 模板：Project Checkup 反馈。

提交前必须确认：

- 没有源码；
- 没有凭证；
- 没有客户数据；
- 不把报告说成客户案例、外部验证或生产可用证明。
