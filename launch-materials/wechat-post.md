# 公众号文章｜Harness Local v0.24.1 Beta 种子用户招募

> 

## 标题备选

1. 我们做了一个本地 AI 项目体检工具，先开放 10 个内测名额
2. 一个能在本地跑的 AI 项目体检工具：Harness Local Beta 开放试用
3. 不上传代码，也能先做项目体检：Harness Local 开放种子用户测试

## 正文

最近我们在做一个小工具：**Harness Local**。

它不是一个云端 SaaS，也不是一个“自动帮你改完整个项目”的魔法工具。

它现在的目标很简单：

> 在本地启动一个轻量工具，帮助开发者/创作者对项目做第一轮安全、结构和交付状态检查。

当前版本是：**v0.24.1-beta**。

我们先开放 10 个种子用户名额，希望找真实用户帮我们验证三件事：

1. 你能不能顺利下载安装到本地；
2. 你是否能看懂它给出的检查结果；
3. 它下一版最应该帮你解决什么问题。

## 它现在能做什么

当前 beta 版本支持：

- 本地启动 Web 界面；
- 默认绑定 `127.0.0.1`；
- 不默认上传你的项目；
- 不读取凭证文件；
- 不保存明文 API Key；
- 提供基础 smoke test / doctor 自检；
- 提供项目接入和安全边界说明。

## 它现在不能做什么

为了避免误解，也直接说清楚：

- 它还不是正式商业版；
- 它不承诺自动修好所有项目；
- 它不默认联网处理你的代码；
- 它不执行破坏性命令；
- 它目前更适合愿意折腾 3 分钟的早期用户。

## 3 分钟试用

GitHub：

https://github.com/ruiflow-team/harness-local

说明页：

https://ruiflow-team.github.io/harness-local/

一键安装：

```bash
curl -L https://ruiflow-team.github.io/harness-local/install.sh | sh
```

手动下载：

https://github.com/ruiflow-team/harness-local/releases/tag/v0.24.1-beta

启动：

```bash
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

## 我们想收集什么反馈

如果你愿意试用，请告诉我们：

1. 你的系统是 macOS / Windows / Linux？
2. 安装是否一次成功？
3. 哪一步卡住了？
4. 你能否看懂它的说明和报告？
5. 你希望 v0.25 最先补什么？
6. 如果未来有付费/private beta，你是否愿意继续试？

反馈入口：

https://github.com/ruiflow-team/harness-local/issues/new/choose

## 最后

Harness Local 现在还很早期。

我们不想先把话说满，而是想先把工具交给真实用户跑一遍。

如果你愿意成为第一批种子用户，欢迎试一下，也欢迎直接提 issue。

我们会根据这批反馈决定 v0.25 的优先级。


## 配图建议

首图建议使用 OpenGraph 横图：
https://ruiflow-team.github.io/harness-local/assets/social/og-harness-local.png

App 标：
https://ruiflow-team.github.io/harness-local/assets/harness-local-mark.svg
