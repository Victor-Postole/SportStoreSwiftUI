//
//  Shop.swift
//  Touchdown
//
//  Created by diseso software on 17.10.2024.
//

import Foundation

class Shop : ObservableObject {
  @Published var showingProduct : Bool = false
  @Published var selectedProduct : ProductModel? = nil
}
