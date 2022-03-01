//
//  ContentView.swift
//  To Do List App
//
//  Created by Дмитрий Поздняков on 01.03.2022.
//

import SwiftUI

struct ToDo {
    let name: String
    let category: String
}

struct ContentView: View {
    
    @State private var todos = [
        ToDo(name: "Write SwiftUI book", category: "person.badge.clock"),
        ToDo(name: "Read Bible", category: "person.circle"),
        ToDo(name: "Bring kids out to play", category: "person.3"),
        ToDo(name: "Fetch wife", category: "person.3"),
        ToDo(name: "Call mum", category: "person.3")
    ]
    
    
    var body: some View {
        List{
            ForEach(todos, id: \.name){ todo in
                HStack{
                    Image(systemName: todo.category).frame(width: 50, height: 50)
                    Text(todo.name)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
