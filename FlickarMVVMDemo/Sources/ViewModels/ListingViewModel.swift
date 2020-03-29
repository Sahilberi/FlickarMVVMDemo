//
//  ListingViewModel.swift
//  FlickarMVVMDemo
//
//  Created by sahil on 29/03/20.
//  Copyright © 2020 None. All rights reserved.
//

import Foundation

protocol ListingProtocol {
  var store: ListingStore { get set }
  var listingPosts: [(id: Int, data: [ListingModel])] { get set }
}


class ListingViewModel: ListingProtocol {
  var store: ListingStore
 
  var listingPosts = [(id: Int, data: [ListingModel])]()

  var count: Int {
    return listingPosts.count
  }

  func getPost(index: Int) -> (id: Int, data: [ListingModel])  {
    return listingPosts[index]
  }

  init() {
    store = ListingStore()
  }

  //TODO: need to handle failure case as well.
  func requestPostData(completion:@escaping () -> ()) {

    store.requestPosts(completion: { (listings) in
      var ids = [Int]()
      self.listingPosts.removeAll()
      
      for list in listings {
        if !ids.contains(list.userId) {
          ids.append(list.userId)
        }
      }

      for userId in ids {
        let post = listings.filter({$0.userId == userId })
        self.listingPosts.append((id:userId , data: post))
      }
      completion()
      
    })
  }

}
