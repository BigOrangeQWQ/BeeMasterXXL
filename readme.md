应该能用了

## Upstream

本项目 fork 自 [GuanRw/BeeMasterXXL](https://github.com/GuanRw/BeeMasterXXL)，其上游为 [hxync/BeeMasterXXL](https://github.com/hxync/BeeMasterXXL)。

## 分支

- `main`：当前开发分支
- `beta1`：适配 GTNH 2.9.0-beta-1
- `beta2`：适配 GTNH 2.9.0-beta-2

## 更新指引

首次需要在机器人的 OC 终端里手动拉取升级脚本（按你的 GTNH 版本选择分支）：

```
wget https://raw.githubusercontent.com/BigOrangeQWQ/BeeMasterXXL/beta1/upgrade.lua
upgrade
```

> beta2 环境把 URL 中的 `beta1` 换成 `beta2`。

以后每次更新只需在终端运行 `upgrade` 即可。脚本会覆盖除 `config.lua` 外的所有脚本，`config.lua` 和基因数据 `data.txt` 不受影响。升级完成后重新运行 `bee.lua`。
