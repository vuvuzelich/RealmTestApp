//
//  To-Do.swift
//  RealmTestApp
//
//  Created by Макс Лахман on 16.03.2024.
//

import Foundation
import RealmSwift

class ToDo : Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id : ObjectId
    @Persisted var name : String
    @Persisted var complited : Bool = false
    @Persisted var urgency : Urgency = .neutral
    
    enum Urgency : Int, PersistableEnum {
        case trivial, neutral, urgent
        
        var text : String {
            switch self {
            case .trivial:
                return "Trivial"
            case .neutral:
                return "Neutral"
            case .urgent:
                return "Urgent"
            }
        }
    }
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}
