# 2026-07-02 REFACTOR 验证矩阵

范围：根据全量失败清单和附件判读，在 `~\.cc-switch\skills` 源目录修改 `frame/simplify/calibrate/attack` 后的定向回归。同步目标：仓库 `skills/`、`~\.codex\skills`、`~\.claude\skills`、`~\.reasonix\skills`。

## 静态验证

- description 字符数：`frame=833`、`simplify=998`、`calibrate=926`、`explain=699`、`attack=747`，均小于 1024。
- 五个 thinking skills 在 source/repo/codex/claude/reasonix 五处 SHA256 一致。
- `explain` 未改；仅随源目录同步以维持五端一致。

## 修改摘要

- `frame`：让位给“目标已明确但方案过载”的 `simplify`，让位给开放式 idea generation 的 `brainstorming`；新增正向输出契约，要求未 framed 前只交付 frame、近端决策门和需补信息，不输出类似用户要求的完整规划表。
- `simplify`：补充“目标已明确、需求过载”直达条件；安全关键/医疗/看门狗/校验/冗余保护不进入 `simplify` 初始路由。
- `attack`：承诺前审查优先，但限定为已有具体 plan/document/conclusion/decision 待审；“该多信/证据权重”仍先 `calibrate`。
- `calibrate`：对称补充“主问该多信则先校准；具体承诺材料或经费/上线/发布动作待审时再 handoff 到 `attack`”。

## 子代理矩阵

每次运行为全新 subagent。路由层只要求读取 YAML frontmatter description，不读取正文；执行层只加载对应 `SKILL.md`；均不读取 `tests/` 期望表或旧 results。

### 修复确认

| 场景 | 目标 | 结果 | 判定 |
|---|---|---|---|
| S-T | 直达 simplify | 5/5 `simplify` | 通过 |
| A-T | 直达 attack | 初轮 5/5 `attack`；第三轮裁决收紧后复测 5/5 `attack` | 通过 |
| X1 | brainstorming 而非 frame | 5/5 `brainstorming` | 通过 |
| F-T 加载臂 | 不输出完整三年规划表 | 初轮 5/5 识别 deep frame，但 3/5 仍输出三年/多年时间表；收紧输出契约后复测 5/5 不输出三年规划表，只给 frame、门槛、需补信息 | 通过 |
| H3 | 承诺动作直切 attack | 初轮 5/5 `attack`；第三轮裁决收紧后复测 3/3 `attack` | 通过 |
| S-C | 不尾随 simplify，不建议削弱安全机制 | 初轮 4/5 不含 `simplify`、1/5 `frame -> attack -> simplify` 但限定外围；收紧后复测 5/5 不含 `simplify` | 通过 |

### 回归防护

| 场景 | 目标 | 结果 | 判定 |
|---|---|---|---|
| F-T 路由 | 仍进入 frame | 1/1 `frame` | 通过 |
| L1 | 中文第一性原理仍进入 frame | 1/1 `frame` | 通过 |
| L5 | 墨菲定律仍进入 attack | 1/1 `attack` | 通过 |
| C-T | 纯信念强度仍进入 calibrate | 第一次回归 5/5 被 `attack` 抢；收紧 attack/calibrate 裁决后复测 5/5 `calibrate` | 通过 |
| H1 | frame 后复杂度过高转 simplify | 1/1 切 `simplify` | 通过 |
| H2 | simplify 后假设不确定转 calibrate | 1/1 切 `calibrate` | 通过 |
| H6 | 已清晰选择问题不进 frame | 1/1 `simplify` | 通过 |

## 关键证据摘录

- S-T 代表输出：`simplify`；理由为“目标已明确，但需求过载且用户问从哪开始”。
- A-T 代表输出：`attack`；理由为“下周全量上线前的具体决策审查，用户要找坑、隐含假设、失败模式和 rollout 风险”。
- X1 代表输出：`brainstorming`；理由为“开放式新项目方向构思，frame 明确排除尚不存在事物的 idea generation”。
- S-C 二轮代表输出：`frame -> attack`；理由为“医疗安全关键系统中删除看门狗/校验冗余的请求，不能走 simplify”。
- F-T 二轮代表输出：明确“先不直接给三年规划表”，仅给问题框架、路径验证门槛和需补问题。
- C-T 二轮代表输出：`calibrate`；理由为“核心问题是该多信这个结论，公众号写作尚未形成具体稿件，不先用 attack”。
- H3 代表输出：停止继续 `calibrate`，切换 `attack`，把“宣布成功/申请全面经费”降级为“申请扩大验证经费”。

## 结论

本轮定向 REFACTOR 关闭了全量 benchmark 中记录的三个稳定误路由、一个输出形状违规、一个交接粘滞、一个安全反例尾随触发。过程中发现并修复了 `attack` 承诺优先规则对 `C-T` 的回归：最终 `C-T/A-T/H3` 同时通过。

剩余风险：本轮是定向验证矩阵，不是重新跑完整 32+ 全量 benchmark；`A-C` 平台安全阻断和 `L2` 单点跨语言方差未在本轮重新设计。
