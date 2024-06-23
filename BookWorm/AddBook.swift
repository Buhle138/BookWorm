//
//  AddBook.swift
//  BookWorm
//
//  Created by Buhle Radzilani on 2024/06/23.
//

import SwiftUI

struct AddBook: View {
    @Environment(\.managedObjectContext) var moc
    
    @State private var title = ""
    @State private var author = ""
    @State private var rating = 3
    @State private var genre = ""
    @State private var review = ""
    
    let genres = ["Fantasy", "Horror", "Kids", "Mystery", "Poetry", "Romance", "Thriller"]
    
    var body: some View {
        NavigationView {
            Form{
                Section{
                    TextField("Name of book", text: $title)
                }
            }
        }
        
    }
}

struct AddBook_Previews: PreviewProvider {
    static var previews: some View {
        AddBook()
    }
}
