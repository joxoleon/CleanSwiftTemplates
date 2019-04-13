//
//  HomeViewController.swift
//  CleanSwiftTestProject
//
//  Created by Jovan on 4/13/19.
//  Copyright (c) 2019 Jovan. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol HomeDisplayLogic: class, DisplayLogic {
    // func displaySomething(_ viewModel: Home.Something.ViewModel)
}

class HomeViewController: UIViewController {

    // MARK: - Scene Component Properties
    var configurator: HomeConfigurator? // Solely for testing purposes
    var interactor: HomeBusinessLogic?
    var router: HomeRouterInput?

    // MARK: Properties
    // var isSomething: Bool = true

    // Mark: - Outlets
    //@IBOutlet weak var nameTextField: UITextField!

    // MARK: - Object Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configurator = HomeConfigurator()
        configurator?.configure(self)
    }
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Perform initialization of the scene
        // interactor?.doSomething()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if self.isMovingFromParent {
            router?.passDataToPreviousScene()
        }
    }
}

extension HomeViewController: HomeDisplayLogic {

    // MARK: - Display Logic

    // func displaySomething(_ viewModel: Home.Something.ViewModel) {
    //     nameTextField.text = viewModel.name
    // }

    // MARK: - Utility Methods

}
