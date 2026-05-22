# 肉鸽打砖块本地版

来源页面：

https://www.astrocade.com/games/brick-breaker/01KG4ZC225QHMGWR1ASZ5ZD58Y

## 关键文件

- `index.html` - 本地可运行入口，已中文化。
- `local_runner.html` - 与 `index.html` 同步的本地运行版。
- `assets/` - 游戏图片、音效和背景音乐。
- `game_config.json` - 物理、难度和视觉参数。
- `asset_map.json` - 原始资源映射和 CDN 地址。
- `game_source.html` - 从公开上下文提取的原始参考代码。
- `play.json` / `play.json.gz` - 公开游玩上下文。
- `full.json` / `full.json.gz` - 公开完整上下文和编辑历史。
- `page.html` - 原公开页面 HTML。

## 本地运行

在 macOS 上双击：

`start-local.command`

或在当前目录运行：

```sh
python3 -m http.server 8791 --bind 127.0.0.1
```

然后打开：

http://127.0.0.1:8791/

`index.html` 是本地运行入口。它会禁用 Astrocade 排行榜接口，把所有资源映射到 `assets/`，并用浏览器 `localStorage` 保存教程状态。

## AI 复刻参考

如果要做相似玩法复刻，优先给 AI 这些文件：

1. `AI_REMAKE_BRIEF.md`
2. `game_design_document.md`
3. `game_config.json`
4. `asset_map.json`
5. `game_source.html`，仅作为参考

原代码和资源只建议作为参考。如果要发布，请重新实现玩法并替换为你拥有授权的美术和音频资源。
