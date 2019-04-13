//
//  HomeRouter.swift
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

protocol HomeRoutingNavigation: RoutingNavigation {
    func showNewScreen()
}

protocol HomeDataPassing: DataPassing {
    var dataStore: HomeDataStore? { get set }
    func passDataToNextScene(segue: UIStoryboardSegue)
    func passDataToPreviousScene()
}

typealias HomeRouterInput = HomeRoutingNavigation & HomeDataPassing

class HomeRouter: Router, HomeRouterInput {
    var dataStore: DataStore?

    var viewController: ViewController?

    
    private struct Segues {
        static let ShowNextScreenIdentifier = ""
    }

    // MARK: - Scene Components
    var previousSceneReceiveDataClosure: ((DataStore) -> ())?

    // MARK: - Properties
    // var isSomething: Bool = true

    // MARK: Navigation
    
    func showNewScreen() {
        viewController?.performSegue(withIdentifier: Segues.ShowNextScreenIdentifier, sender: nil)
    }
    
    // MARK: Passing data
    
    func passDataToNextScene(segue: UIStoryboardSegue) {
        if segue.identifier == Segues.ShowNextScreenIdentifier {
            // Pass Relevant Data
        }
    }

    func passDataToPreviousScene() {
        guard let dataStore = dataStore else { return }
        previousSceneReceiveDataClosure?(dataStore)
    }
}