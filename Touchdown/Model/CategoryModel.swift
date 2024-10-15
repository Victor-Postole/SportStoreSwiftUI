//
//  CategoryModel.swift
//  Touchdown
//
//  Created by diseso software on 16.10.2024.
//

import Foundation


struct CategoryModel : Codable, Identifiable {
    let id : Int
    let name : String
    let image : String
}
