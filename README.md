# SwiftUI macOS @StateObject

## 简介

演示 SwiftUI 中 @StateObject（外部状态对象）的用法。

## 快速开始

```bash
cd swiftui-macos-stateobject-demo
xcodegen generate
open SwiftUIStateObjectDemo.xcodeproj
# Cmd+R 运行
```

## 概念讲解

### @StateObject

```swift
class Counter: ObservableObject {
    @Published var count = 0
}

@StateObject private var counter = Counter()
```

## 完整讲解（中文）

### @StateObject vs @State

- @State 用于值类型（Int, String）
- @StateObject 用于引用类型（class）
- @StateObject 创建的对象不会在视图刷新时重建
- 配合 @ObservedObject 使用在子视图