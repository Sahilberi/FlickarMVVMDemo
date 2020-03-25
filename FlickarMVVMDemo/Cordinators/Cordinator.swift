//
//  Cordinator.swift
//  FlickarMVVMDemo
//
//  Created by sahil on 25/03/20.
//  Copyright © 2020 None. All rights reserved.
//

import UIKit

public protocol Coordinator : class {

  var childCoordinators: [Coordinator] { get set }
  
  // All coordinators will be initilised with a navigation controller
  init(navigationController:UINavigationController)
  
  func start()
}
