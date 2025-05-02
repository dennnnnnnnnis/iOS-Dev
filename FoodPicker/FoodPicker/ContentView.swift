//
//  ContentView.swift
//  FoodPicker
//
//  Created by 王泽禹 on 2/5/2025.
//

import SwiftUI

struct ContentView: View {
    let food = ["fries", "icecream", "pizza", "pasta", "sushi"]
    @State private var selectedFood: String? // initialized
    
    var body: some View {
        VStack(spacing: 30) { // 直接设置好每一个view之间的spacing
            // 每一个下面的都是一个view
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
        
            Text("What do you want to eat today?")
                .bold()
            
            // if not none, then show the food, otherwise show nothing to reduce the spacing
            if selectedFood != nil {
                Text(selectedFood ?? "")
                    .font(.largeTitle) //vstack下面有font大小，但因为这里先font了一次，所以不会保留后font的效果
                    .bold()
                    .foregroundStyle(.green)
            }
            
            // default colour在assets里面的accent colour选择
            Button(role: .none, action: {selectedFood = food.shuffled().first}, label: {Text(selectedFood == .none ? "Tell me!" : "Another one!").frame(width: 200)}) //设置文本框的长宽
                .buttonStyle(.borderedProminent)
                .padding(.bottom, -15) // 往下的padding -15
            
            // reset button
            Button(role: .none, action: {selectedFood = .none}, label: {Text("Reset").frame(width: 200)}) //设置文本框的长宽
                .buttonStyle(.bordered)
            
        }
        .padding() // 和边界还是要有一点padding
        .frame(maxWidth: .infinity, maxHeight: .infinity) // 尽量填满整个screen
        .background(Color(.secondarySystemBackground)) // 改变背景颜色
        .font(.title) // font size
        .buttonBorderShape(.capsule) // shape of button border
        .controlSize(.large)  // size of any controller
        .animation(.easeInOut, value: selectedFood) // 给每一个view加上动画，如果单独加在view后面，view如果有变化，比如变成null，那animation不会有效果
    }
}

#Preview {
    ContentView()
}
