//
//  HomeInteractor.swift
//  CleanSwiftTestProject
//
//  Created by Jovan on 4/13/19.
//  Copyright (c) 2019 Jovan. All rights reserved.
//
//  This file was 'partially' generated by the Clean Swift templates created by Jovan Radivojsa (a.k.a. joxoleon),
//  Based on the original clean swift templates created by Raymond Law: http://clean-swift.com
//

import UIKit

protocol HomeBusinessLogic: BusinessLogic {
    // func doSomething(_ request: Home.Something.Request)
}

protocol HomeDataStore: DataStore {
    // var name: String { get set }
}

class HomeInteractor: HomeBusinessLogic, HomeDataStore {

    // MARK: - Scene Component Properties
    var presenter: HomePresentationLogic?
    var worker: HomeWorker?
    let childViewControllerClosingHandler: (DataStore) -> () = { childDataStore in
        // Use 'childDataStore' to extract necessary data from the closing child view controller.
    }

    // MARK: - Properties
    // var name: String


    // MARK: - Business Logic

    // func doSomething(_ request: Home.Something.Request) {
    //     worker.doSomeWork()
    //     presenter?.presentSomething(TestScene.Something.Response())
    // }

    // MARK: - Utility Methods

    // func isSomethingSomething() -> Bool { return true }
}
