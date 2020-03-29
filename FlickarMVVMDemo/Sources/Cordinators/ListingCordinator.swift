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
    let viewModel = ListingViewModel()
    let listingViewController : ListingViewController = ListingViewController.instantiate()
    listingViewController.viewModel = viewModel
    listingViewController.delegate = self
    self.navigationController.viewControllers = [listingViewController]
  }
}

extension ListingCordinator: ListingViewControllerDelegate {
  func naviagteToNextPage(_ controller: ListingViewController, didTapProduct listings: [ListingModel]) {
    let detailsVC = DetailsTableViewController.instantiate()
    detailsVC.viewModel = DetailsViewModel(models: listings)
    self.navigationController.pushViewController(detailsVC, animated: true)
  }

}
