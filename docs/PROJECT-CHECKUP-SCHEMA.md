# Project Checkup Schema（v0.26.0）

`./harness project-checkup` 生成本地 AI 项目体检包。

输出目录：

```text
dist/evidence/PROJECT-CHECKUP/
  project-checkup.json
  PROJECT-CHECKUP.md
  SAFE-SHARE-CHECKLIST.md
  SHARE-CONTRACT.json
```

## project-checkup.json

关键字段：

```json
{
  "schema_version": "project-checkup-v0.26.0",
  "product": "Project Checkup / AI 项目体检所",
  "status": "PASS|WARN|FAIL",
  "readiness": "green|yellow|red",
  "local_only": true,
  "upload_required": false,
  "source_code_required": false,
  "credentials_required": false,
  "customer_data_allowed": false,
  "summary": {
    "must_fix": 0,
    "should_fix": 0,
    "can_ignore": 0
  },
  "diagnosis": {},
  "release_readiness": {},
  "claim_boundary": {},
  "safe_share_checklist": [],
  "operator_gate": [],
  "share_contract": {},
  "commercial_boundary": {}
}
```

## 字段解释

- `schema_version`：Project Checkup 输出结构版本。
- `status`：命令是否成功生成体检包。
- `readiness`：体检风险读数，不是商业成功证明。
- `diagnosis`：来自 doctor 的分层风险项。
- `release_readiness`：本地交付/发布证据状态。
- `claim_boundary`：哪些话能说，哪些话不能说。
- `safe_share_checklist`：分享前人工审核清单。
- `operator_gate`：操作者必须确认的红线。
- `share_contract`：机器可读安全分享合同。
- `commercial_boundary`：商业触达/收款/客户案例边界。

## 重要边界

Project Checkup v0：

- 不是安全审计认证；
- 不是客户案例；
- 不是外部真实用户验证；
- 不是付费客户证明；
- 不是生产可用证明；
- 不做自动修复；
- 不上传源码或凭证。
