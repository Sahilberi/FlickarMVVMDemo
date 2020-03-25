//
//  RecentImagesCordinator.swift
//  FlickarMVVMDemo
//
//  Created by sahil on 25/03/20.
//  Copyright © 2020 None. All rights reserved.
//

import UIKit

class RecentImagesCordinator: Coordinator {

  var childCoordinators: [Coordinator] = []
  
  let navigationController: UINavigationController

  required init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }

  func start() {
    let recentViewController : RecentViewController = RecentViewController.instantiate()
    recentViewController.delegate = self
    self.navigationController.viewControllers = [recentViewController]
  }

}


extension RecentImagesCordinator: RecentViewControllerDelegate {
 
  func naviagteToNextPage(_ controller: RecentViewController, didTapProduct product: Product) {
    navigationController.pushViewController(controller, animated: true)
  }

}
