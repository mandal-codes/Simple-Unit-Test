//
//  ContentView.swift
//  Simple Unit Test
//
//  Created by Shubham Mandal on 17/01/26.
//

import SwiftUI

struct ContentView: View {
    @State private var viewModel: ItemViewModel = ItemViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(viewModel.items) { item in
                        Text(item.name)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(Color.gray.opacity(0.5))
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            .listRowBackground(Color.clear)
                    }
                }
                Spacer()
                Button("Delete Last", role: .destructive) {
                    viewModel.deleteLastItem()
                }
                .disabled(viewModel.deleteDisabled)
            }
            .navigationTitle("Swift Testing")

        }

    }
}

#Preview {
    ContentView()
}
