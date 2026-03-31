import SwiftUI

class Counter: ObservableObject {
    @Published var count = 0

    func increment() {
        count += 1
    }

    func decrement() {
        count -= 1
    }
}

struct ChildView: View {
    @ObservedObject var counter: Counter

    var body: some View {
        VStack {
            Text("计数：\(counter.count)")
                .font(.title)

            HStack {
                Button("-") {
                    counter.decrement()
                }

                Button("+") {
                    counter.increment()
                }
            }
        }
    }
}

struct ContentView: View {
    @StateObject private var counter = Counter()

    var body: some View {
        VStack(spacing: 20) {
            Text("@StateObject 示例")
                .font(.headline)

            ChildView(counter: counter)

            Text("共享同一个 Counter 实例")
                .foregroundColor(.secondary)
        }
        .padding()
        .environmentObject(counter)
    }
}