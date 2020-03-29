//
//  PhotosCollectionViewModel.swift
//  FlickarMVVMDemo
//
//  Created by sahil on 26/03/20.
//  Copyright © 2020 None. All rights reserved.
//

import Foundation

protocol PhotosCollectionViewModel {
  
  var reuseIdentifier: String { get }
  
  var itemsPerPage: Int { get }
  var itemsPerRow: Int { get }
  var itemsPerSection: Int { get }
  var itemsTreshold: Int { get }

  var photosData: [Photo] { get set }
  var currentPage: Int { get set }
  var totalPages: Int { get set }
  func requestNextPhotosPage(completion:@escaping () -> ())
  
}
