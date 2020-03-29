//
//  TechonlogyCordinator.swift
//  FlickarMVVMDemo
//
//  Created by sahil on 29/03/20.
//  Copyright © 2020 None. All rights reserved.
//

import UIKit

class TechonlogyCordinator: Coordinator {
  
  var childCoordinators: [Coordinator] = []
  
  let navigationController: UINavigationController
  
  required init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }

  func start() {
    let listingViewController : TechnologyUsedViewController = TechnologyUsedViewController.instantiate()
    self.navigationController.viewControllers = [listingViewController]
  }

}
