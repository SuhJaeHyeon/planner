//
//  HistoryView.swift
//  planner
//
//  Created by martin on 2024/04/22.
//

import SwiftUI

struct HistoryView: View {
    @State private var selectedDate = Date()

    var body: some View {
        VStack {
            Text("날짜 선택: \(selectedDate, formatter: dateFormatter)")
                .padding()

            DatePicker(
                "날짜 선택",
                selection: $selectedDate,
                displayedComponents: .date
            )
            .datePickerStyle(GraphicalDatePickerStyle())
            .padding()
        }
    }
}

extension HistoryView {
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
