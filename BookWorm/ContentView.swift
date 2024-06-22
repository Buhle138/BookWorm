//
//  ContentView.swift
//  BookWorm
//
//  Created by Buhle Radzilani on 2024/06/22.
//

import SwiftUI

struct ContentView: View {
    //sortDescriptors is about the format we would like to sort our data in our case it's an array. 
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!ss")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
