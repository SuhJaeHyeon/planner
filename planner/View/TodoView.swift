//
//  TodoList.swift
//  planner
//
//  Created by martin on 2024/04/22.
//

import SwiftUI

struct TodoView: View {
    @ObservedObject var viewModel = TodoViewModel()

    var body: some View {
        VStack {
            List {
                ForEach(viewModel.items) { item in
                    HStack {
                        Button(action: {
                            completeItem(item)
                        }) {
                            Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                        }
                        Text(item.title)
                    }
                }
            }

            Divider()

            List {
                ForEach(viewModel.completedItems) { item in
                    HStack {
                        Button(action: {
                            uncompleteItem(item)
                        }) {
                            Image(systemName: "circle")
                        }
                        Text(item.title).strikethrough()
                    }
                }
            }
        }
    }

    func completeItem(_ item: TodoItem) {
        if let index = viewModel.items.firstIndex(of: item) {
            var newItem = item
            newItem.isCompleted = true
            viewModel.items.remove(at: index)
            viewModel.completedItems.append(newItem)
        }
    }

    func uncompleteItem(_ item: TodoItem) {
        if let index = viewModel.completedItems.firstIndex(of: item) {
            var newItem = item
            newItem.isCompleted = false
            viewModel.completedItems.remove(at: index)
            viewModel.items.append(newItem)
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView()
    }
}
