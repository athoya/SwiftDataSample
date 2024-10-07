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
    @State var menuName: String = ""
    @State var price: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 24) {
                HStack {
                    Text("Menu").frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                    TextField("Menu Name", text: $menuName)
                }
                HStack {
                    Text("Price").frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                    TextField("Price", text: $price)
                }
                Spacer()
            }
            .padding()
            .toolbar {
                Button(action: {
                    context.insert(ExpenseItem(menuName: menuName, price: Int(price) ?? 0))
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
