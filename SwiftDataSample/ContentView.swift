//
//  ContentView.swift
//  SwiftDataSample
//
//  Created by Athoya on 25/09/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query var expenses: [ExpenseItem]
    @Environment(\.modelContext) private var context

    @State var showSheetPresented = false
    
    var body: some View {
        NavigationStack {
            List(expenses, id: \.self, rowContent: { item in
                VStack(alignment: .leading) {
                    Text(item.expenseName).font(.headline)
                    Text("\(item.amount.formatted())")
                }
            })
            .toolbar {
                Button {
                    showSheetPresented.toggle()
                } label: {
                    Text("Add")
                }
            }
            VStack(alignment: .trailing) {
                Text("Total: ")
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding()
            }
            .background(.gray)
        }
        .sheet(isPresented: $showSheetPresented) {
            AddExpenseView()
        }
    }
}

#Preview {
    ContentView()
}
