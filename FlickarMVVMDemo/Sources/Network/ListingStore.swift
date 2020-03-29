//
//  ListingStore.swift
//  FlickarMVVMDemo
//
//  Created by sahil on 29/03/20.
//  Copyright © 2020 None. All rights reserved.
//

import Foundation


class ListingStore: Store {

  // MARK: - API Request
  
  func requestPosts(completion: @escaping ([ListingModel]) -> ()) {

    getRequestForPostListing( completion: { (value) in
      if value != nil {
        let responseString = String(data: value!, encoding: .utf8)
        print("Response string:\(responseString!)")
        if let listingData = self.parseListingData(value: value!) {
          completion(listingData)
        }
      }
    })
  }

  func parseListingData(value: Data) -> [ListingModel]? {
    do {
      let listing = try JSONDecoder().decode([ListingModel].self, from: value)
      print(listing)
      return listing
    } catch {
      print(error)
    }
    return nil
  }
  
}
