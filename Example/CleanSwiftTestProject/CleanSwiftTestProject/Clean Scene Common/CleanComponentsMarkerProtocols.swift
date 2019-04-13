//
//  MarkerProtocols.swift
//  TemplatesTest
//
//  Created by Jovan Radivojsa on 4/12/19.
//  Copyright © 2019 LotusFlare.inc. All rights reserved.
//

import Foundation
import UIKit

/*
I think it would be beneficial to have marker protocols for clean scene templates in case some functionality could be abstracted or added in the future.
 */

// MARK: Data Definitnions
typealias ChildVCClosingHandler = (DataStore) -> ()
typealias RouterInput = RoutingNavigation & DataPassing

// MARK: Configurator

protocol ConfiguratorLogic: class {
    func configure(_ viewController: BaseViewController)
}

// MARK: ViewContorller

protocol DisplayLogic: class {
}

protocol CleanViewController: DisplayLogic {
    var configurator: ConfiguratorLogic? { get set }
    var interactor: BusinessLogic? { get set }
    var router: RouterInput? { get set }
}

// MARK: Interactor

protocol DataStore: class {
    var childViewControllerClosingHandler: ChildVCClosingHandler { get }
}

protocol BusinessLogic: class {
}

protocol Interactor: class {
    var presenter: PresentationLogic? { get set }
    var worker: WorkerLogic? { get set }
}

// MARK: Presenter

protocol PresentationLogic: class {
}

protocol Presenter: class {
    var viewController: DisplayLogic? { get set }
}

// MARK: Router

protocol RoutingNavigation: class {
}

protocol DataPassing: class {
    func passDataToPreviousScene()
    func passDataToNextScene(segue: UIStoryboardSegue)
    func passClosingHandlerToChildScene(handler: ChildVCClosingHandler)
}

protocol Router: class {
    var dataStore: DataStore? { get set }
    var viewController: ViewController? { get set }
    var previousSceneReceiveDataClosure: ChildVCClosingHandler? { get set }
}

// MARK: Worker

protocol WorkerLogic: class {
}

// MARK: Models

protocol Models {
}
