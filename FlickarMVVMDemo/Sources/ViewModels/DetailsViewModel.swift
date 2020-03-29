//
//  DetailsViewModel.swift
//  FlickarMVVMDemo
//
//  Created by sahil on 29/03/20.
//  Copyright © 2020 None. All rights reserved.
//

import Foundation


class DetailsViewModel {
 
  var listingPosts = [ListingModel]()

  var count: Int {
    return listingPosts.count
  }

  func getPost(index: Int) -> ListingModel  {
    return listingPosts[index]
  }

  func changeExapnad(index: Int) {
    var  model = self.getPost(index: index)
    let expandble = model.isExpandable ?? false
    model.changeIsExpandable(to: !expandble)
    self.listingPosts[index] = model
  }

  init(models: [ListingModel]) {
    self.listingPosts = models
  }

}
