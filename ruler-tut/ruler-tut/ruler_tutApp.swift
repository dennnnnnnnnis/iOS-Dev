//
//  ruler_tutApp.swift
//  ruler-tut
//
//  Created by 王泽禹 on 2/5/2025.
//

import SwiftUI

@main // app start
struct ruler_tutApp: App { // 同一个app里面可以有很多的window
    var body: some Scene {
        WindowGroup { // 管理windows，这就是一种scene
            ContentView() // app一开始的画面
        }
    }
}

// app (needs to know all the windows) -> scene (what's inside) -> view (components)
// 还有两种scene是DocumentGroup和setting (for mac app only, the setting tab)
