# Quick Checkup：三分钟给 AI 项目做一次本地体检

> Project Checkup / AI 项目体检所：AI 改代码前，先给项目做一次本地体检。  
> 本工具本地运行，不上传源码，不需要凭证，不等于客户案例或生产可用证明。

## 1. 它解决什么问题？

很多项目现在由 AI 编程工具、低代码平台、外包团队或临时脚本快速生成。它们可能“能跑”，但仍然存在：

- 不知道能不能交给 AI 继续改；
- 不知道是否有发布/交付阻塞；
- 不知道报告或截图能不能安全分享；
- 不知道哪些宣传话术不能说；
- 不知道是否遗漏本地包、QA、候选版本或演示证据。

Project Checkup 的第一版不做云审计、不做自动修复、不做商业认证，只做一件事：

> 在本地生成一份项目体检报告，标出风险、可分享边界和人工审核 gate。

## 2. 四个命令

```bash
./harness doctor
./harness doctor-report
./harness checkup-sample
./harness project-checkup
```

含义：

- `doctor`：输出机器可读 JSON 体检结果。
- `doctor-report`：输出 Markdown 体检报告。
- `checkup-sample`：生成脱敏样张，说明报告长什么样。
- `project-checkup`：生成产品化体检包，输出 JSON、Markdown、安全分享清单和 share contract。

## 3. 输出在哪里？

```text
dist/evidence/PROJECT-CHECKUP/
  project-checkup.json
  PROJECT-CHECKUP.md
  SAFE-SHARE-CHECKLIST.md
  SHARE-CONTRACT.json
  project-checkup-summary.json
```

## 4. 怎么读 RED / YELLOW / GREEN？

- `red`：有必须修的阻塞项，不能包装成 ready。
- `yellow`：可本地检查，但交付或对外分享前还需要补证据。
- `green`：本地 doctor 没发现 must-fix/should-fix；仍不等于外部用户验证、付费客户或生产可用证明。

## 5. 什么能说？

可以说：

- 本工具可本地运行；
- 本工具可生成体检报告；
- 报告可帮助识别发布、分享、声明边界；
- 分享前需要人工审核。

不能说：

- 已有真实外部用户验证；
- 已有付费客户；
- 报告证明项目生产可用；
- 报告等同安全审计认证；
- 自动修复所有风险。

## 6. 安全边界

Project Checkup v0 不要求上传：

- 源码；
- 凭证；
- token / key；
- 原始反馈日志；
- 客户数据。

分享前必须人工检查：

- Markdown 报告中是否有本地路径；
- 截图中是否有敏感信息；
- 是否误写成客户案例或商业验证；
- 是否把下载数、clone 数、内部 dogfood 当真实用户。

## 7. 推荐使用时机

- 让 AI agent 大改项目之前；
- 发布 beta 包之前；
- 对外展示截图/报告之前；
- 外包验收或交接之前；
- 团队内讨论“这个项目能不能上线”之前。
