import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { _ in
            NavigationStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        TabView {
                            Color.yellow
                            Color.red
                            Color.green
                        }
                        .tabViewStyle(.page(indexDisplayMode: .never))
                        .frame(height: 480)

                        ForEach(0...50, id: \.self) { _ in
                            Color.random()
                        }
                    }
                }
                .background(.gray)
                .ignoresSafeArea(.all, edges: .top)
                .toolbarBackground(.hidden, for: .navigationBar)
                .toolbar(content: {
                    ToolbarItemGroup(placement: .principal) {
                        Image(systemName: "wind.snow")
                            .foregroundStyle(.blue)
                    }
                })
            }
        }
    }
}

#Preview {
    ContentView()
}

public extension Color {
    static func random() -> Color {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            opacity: 1
        )
    }
}
