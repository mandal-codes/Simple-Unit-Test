//
//  Item.swift
//  Simple Unit Test
//
//  Created by Shubham Mandal on 17/01/26.
//
import Foundation

struct Item: Identifiable {
    var name: String
    let id: UUID
    init(name: String, id: UUID = UUID()) {
        self.name = name
        self.id = id
    }

    static var mocks: [Self] {
        [Item(name: "first"), Item(name: "second"), Item(name: "third"), Item(name: "fourth")]
    }
}
