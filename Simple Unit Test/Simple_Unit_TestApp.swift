//
//  Simple_Unit_TestApp.swift
//  Simple Unit Test
//
//  Created by Shubham Mandal on 17/01/26.
//

import SwiftUI

@main
struct Simple_Unit_TestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ItemViewModel())
        }
    }
}
