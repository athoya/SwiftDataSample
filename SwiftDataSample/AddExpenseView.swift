//
//  AddMenuView.swift
//  SwiftDataSample
//
//  Created by Athoya on 01/10/24.
//

import SwiftUI

struct AddExpenseView: View {
    @Environment(\.dismiss) private var dismiss
    
    @Environment(\.modelContext) private var context
    @State var expenseName: String = ""
    @State var amount: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 24) {
                HStack {
                    Text("Name").frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                    TextField("Expense Name", text: $expenseName)
                }
                HStack {
                    Text("Amount").frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                    TextField("Amount", text: $amount)
                }
                Spacer()
            }
            .padding()
            .toolbar {
                Button(action: {
                    context.insert(ExpenseItem(expenseName: expenseName, amount: Double(amount) ?? 0.0))
                    dismiss()
                }, label: {
                    Text("Save")
                })
            }.navigationTitle("Add Item")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AddExpenseView()
}
