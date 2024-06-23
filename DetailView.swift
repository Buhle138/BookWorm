//
//  DetailView.swift
//  BookWorm
//
//  Created by Buhle Radzilani on 2024/06/23.
//

import SwiftUI

struct DetailView: View {
    let book: Book //from the entity
    
    var body: some View {
        ScrollView{
            ZStack(alignment: .bottomTrailing) {
                Image(book.genre ?? "Fantasy")
                
            }
        }
    }
}

