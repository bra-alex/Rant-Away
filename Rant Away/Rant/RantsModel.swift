//
//  Rants.swift
//  Rant Away
//
//  Created by Don Bouncy on 27/11/2022.
//

import Foundation

struct RantsModel: Codable, Identifiable{
    let id: String
    let title: String
    let rant: String
    let date: Date
    
    var formattedDate: String{
        date.formatted(date: .abbreviated, time: .omitted)
    }
}
