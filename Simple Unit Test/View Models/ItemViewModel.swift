//
//  ItemViewModel.swift
//  Simple Unit Test
//
//  Created by Shubham Mandal on 17/01/26.
//
import Foundation

@Observable
final class ItemViewModel {
    var items: [Item] = Item.mocks
    var deleteDisabled: Bool = false

    func deleteLastItem() {
        guard items.isEmpty == false else { return }
        items.removeLast()
        deleteDisabled = items.isEmpty
    }
}

