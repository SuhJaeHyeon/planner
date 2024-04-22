//
//  TodoItem.swift
//  planner
//
//  Created by martin on 2024/04/22.
//

import Foundation
struct TodoItem: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var isCompleted: Bool
}
