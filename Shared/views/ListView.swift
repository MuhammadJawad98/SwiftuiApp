//
//  ListView.swift
//  CardView (iOS)
//
//  Created by Ali Raza on 26/01/2022.
//

import SwiftUI

struct ListView: View {
    @State private var locations = ["Task 1 Coding", "Task 2 Searching", "Task 3 Animation","Task 4 Git commands","Task 5 Learnign new SwiftUi components"]
    @State var username: String = ""
    @State var showsAlert = false
    var body: some View {
        VStack{
            HStack{
                Text("Add Task")
                Spacer()
                Button(action: {addRow()}, label: {
                    Image(systemName: "plus")
                }).foregroundColor(.black)
                
                
            }.padding()
            TextField("Enter username...", text: $username).padding()
            List {
                           // 2.
                
                           ForEach(locations, id: \.self) { location in
                               Text(location)
                           }
            }.listStyle(PlainListStyle())
        }  .alert("Alert", isPresented: $showsAlert, actions: {}) // 4
      
        
    }
    // 4.
        private func addRow() {
            if(username.isEmpty){
                showsAlert=true;
            }else{
                self.locations.append(username)
            }
            
        }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
