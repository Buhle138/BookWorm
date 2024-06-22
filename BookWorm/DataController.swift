//
//  DataController.swift
//  BookWorm
//
//  Created by Buhle Radzilani on 2024/06/22.
//

import CoreData
import Foundation


class DataController: ObservableObject{
    
    //core data model responsible for getting access to the data inside core data.
    let container = NSPersistentContainer(name: "BookWorm")
    
    
    init(){
        container.loadPersistentStores { description, error in
            if let error = error{
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
    
}
