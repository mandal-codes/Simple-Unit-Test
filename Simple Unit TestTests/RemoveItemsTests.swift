//
//  RemoveItemsTests.swift
//  Simple Unit TestTests
//
//  Created by Shubham Mandal on 17/01/26.
//

import Testing
@testable import Simple_Unit_Test

@MainActor
struct RemoveItemsTests {

    @Test("Remove Last button should decrease item count by 1")
    func items_when_remove_button_then_itemCount_lowered() async throws {
        // (ARRANGE) --- GIVEN ---
        let vm = ItemViewModel()
        let itemCount = vm.items.count
        let expectedItemCount = itemCount - 1

        // (ACT) --- WHEN ---
        vm.deleteLastItem()

        //(ASSERT) --- THEN ---
        #expect(vm.items.count == expectedItemCount, "Expected Item count should be \(expectedItemCount)")
    }

    @Test("When there are no items, the remove last button should be disabled")
    func no_items_then_remove_button_disabled() async throws {
        // (ARRANGE) --- GIVEN ---
        let vm = ItemViewModel()

        // (ACT) --- WHEN ---
        for _ in vm.items {
            vm.deleteLastItem()
        }

        //(ASSERT) --- THEN ---
        #expect(vm.deleteDisabled == true, "Remove button should be disabled when there are no items.")
    }

    @Test("When there are no items, the remove last button should do nothing")
    func remove_last_from_empty_list_does_nothing() async throws {
        // (ARRANGE) --- GIVEN ---
        let vm = ItemViewModel()

        // (ACT) --- WHEN ---
        vm.items = []
        vm.deleteLastItem()

        // --- THEN ---
        #expect(vm.items.count == 0, "Items array should still be empty.")

    }
}
