//
//  ContentView.swift
//  SwiftDataSample
//
//  Created by Athoya on 25/09/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query var menus: [MenuItem]
    @Environment(\.modelContext) private var context

//    var menus: [MenuItem] = [
//        MenuItem(menuName: "Noodle", price: "$0.99"),
//        MenuItem(menuName: "Fried Rice", price: "$1.99")
//    ]
    @State var showSheetPresented = false
    
    var body: some View {
        NavigationStack {
            List(menus, id: \.self, rowContent: { menu in
                VStack(alignment: .leading) {
                    Text(menu.menuName).font(.headline)
                    Text(menu.price)
                }
            })
            .toolbar {
                Button {
                    showSheetPresented.toggle()
                } label: {
                    Text("Add Item")
                }
            }
        }
        .sheet(isPresented: $showSheetPresented) {
            AddMenuView()
        }
    }
}

#Preview {
    ContentView()
}
