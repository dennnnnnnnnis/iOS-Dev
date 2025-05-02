//
//  ContentView.swift
//  ruler-tut
//
//  Created by 王泽禹 on 2/5/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack { // layout (view)
            Image(systemName: "globe")
                .imageScale(.large) // modifier
                .foregroundStyle(.tint) // modifier
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
