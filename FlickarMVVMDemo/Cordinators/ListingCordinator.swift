//
//  File.swift
//  FlickarMVVMDemo
//
//  Created by sahil on 25/03/20.
//  Copyright © 2020 None. All rights reserved.
//

import UIKit

class ListingCordinator: Coordinator {

  var childCoordinators: [Coordinator] = []

  let navigationController: UINavigationController

  required init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }

  func start() {
    let listingViewController : ListingViewController = ListingViewController.instantiate()
    listingViewController.delegate = self
    self.navigationController.viewControllers = [listingViewController]
  }

}

extension ListingCordinator: ListingViewControllerDelegate {
  func naviagteToNextPage(_ controller: ListingViewController, didTapProduct product: Product) {
  }
  
}
