//
//  ContentView.swift
//  BookWorm
//
//  Created by Buhle Radzilani on 2024/06/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    
    //Fetch request reading out all the books we have saved so far.
    @FetchRequest(sortDescriptors: []) var books: FetchedResults<Book>
    @State private var showingAddScreen = false

    var body: some View {
        NavigationView {
            List{
                ForEach(books){book in
                    NavigationLink{
                       DetailView(book: book)
                    }label: {
                        HStack{
                            EmojiRatingView(rating: book.rating)
                                .font(.largeTitle)
                            VStack(alignment: .leading) {
                                Text(book.title ?? "Unknown Author")
                                    .font(.headline)
                                
                                Text(book.author ?? "Unknown Author")
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                }
                .onDelete(perform: deleteBooks)
            }
                .navigationTitle("BookWorm")
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading) {
                        EditButton()
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button{
                            showingAddScreen.toggle()
                        } label: {
                            Label("Add Book", systemImage: "plus")
                        }
                    }
                }
                .sheet(isPresented: $showingAddScreen){
                    AddBook()
                }
        }
      
    }
    
    //adding the delete functionality
    func deleteBooks(at offsets: IndexSet){
        for offset in offsets {
            let book = books[offset]
            moc.delete(book)
        }
        
       // try? moc.save()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
