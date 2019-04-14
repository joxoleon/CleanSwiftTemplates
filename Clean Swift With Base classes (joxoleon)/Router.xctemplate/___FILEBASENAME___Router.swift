//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ___VARIABLE_sceneName___RoutingNavigation {
    func showNewScreen()
}

protocol ___VARIABLE_sceneName___DataPassing {
    var dataStore: ___VARIABLE_sceneName___DataStore? { get set }
    func passDataToNextScene(segue: UIStoryboardSegue)
}

typealias ___VARIABLE_sceneName___RouterInput = ___VARIABLE_sceneName___RoutingNavigation & ___VARIABLE_sceneName___DataPassing

class ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___RouterInput {
    
    private struct Segues {
        static let ShowNextScreenIdentifier = ""
    }
    
    var dataStore: ___VARIABLE_sceneName___DataStore?
    weak var viewController: ___VARIABLE_sceneName___ViewController?
    
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
}