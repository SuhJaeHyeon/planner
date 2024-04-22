//
//  TodoViewModel.swift
//  planner
//
//  Created by martin on 2024/04/22.
//

import Foundation
class TodoViewModel: ObservableObject {
    @Published var items: [TodoItem] = [
        TodoItem(title: "청소하기", isCompleted: false),
        TodoItem(title: "쇼핑하기", isCompleted: false)
    ]
    @Published var completedItems: [TodoItem] = []
}
