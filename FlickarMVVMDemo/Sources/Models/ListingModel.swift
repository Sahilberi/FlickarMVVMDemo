//
//  ListingModel.swift
//  FlickarMVVMDemo
//
//  Created by sahil on 29/03/20.
//  Copyright © 2020 None. All rights reserved.
//

import Foundation

struct ListingModel: Codable {
  var userId: Int
  var id: Int
  var title: String
  var body: String
  var isExpandable: Bool?
  
  mutating func changeIsExpandable(to isExpandable: Bool){
    self.isExpandable = isExpandable
  }
}

