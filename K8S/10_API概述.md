# API应用程序接口
k8s一切的操作都是调用api接口实现的，例如：命令行工具的实际也是调用api接口

REST API是kubenetes系统的重要部分，组件之间的所有操作和通信均有API Server处理REST API调用
大多数情况下，API定义和实现都符合标准的HTTP REST格式，可以通过kubectl命令管理工具或其他命令行工具来执行

官网文档：[https://kubernetes.io/zh-cn/docs/reference/using-api/](https://kubernetes.io/zh-cn/docs/reference/using-api/)

## 1 类型
### 1.1 Alpha
尝鲜版本

- 包含 alpha 名称的版本（例如v1alpha1）。
- 该软件可能包含错误。启用一个功能可能会导致 bug。默认情况下，功能可能会被禁用。
- 随时可能会丢弃对该功能的支持，恕不另行通知。
- API 可能在以后的软件版本中以不兼容的方式更改，恕不另行通知。
- 该软件建议仅在短期测试集群中使用，因为错误的风险增加和缺乏长期支持。

### 1.2 Beta
经过完善的测试，大多数情况下没得问题

- 包含 beta 名称的版本（例如 v2beta3）。
- 该软件经过很好的测试。启用功能被认为是安全的。默认情况下功能是开启的。
- 细节可能会改变，但功能在后续版本不会被删除
- 对象的模式或语义在随后的 beta 版本或 Stable 版本中可能以不兼容的方式发生变化。如果这种情况发生时，官方会提供迁移操作指南。这可能需要删除、编辑和重新创建API对象。
- 该版本在后续可能会更改一些不兼容地方，所以建议用于非关键业务，如果你有多个可以独立升级的集群，你也可以放宽此限制。
- 大家使用过的 Beta 版本后，可以多给社区反馈，如果此版本在后续更新后将不会有太大变化。

### 1.3 Stable
稳定版本

- 该版本名称命名方式：vX 这里 X 是一个整数。
- Stable 版本的功能特性，将出现在后续发布的软件版本中。

## 2 **访问控制**
### 2.1 认证
### 2.2 授权

## 3 废弃api说明
[https://kubernetes.io/zh-cn/docs/reference/using-api/deprecation-guide/](https://kubernetes.io/zh-cn/docs/reference/using-api/deprecation-guide/)