//
//  UIEngineExampleApp.swift
//  UIEngineExample
//
//  Created by Kanwar Zorawar Singh Rana on 5/21/22.
//

import SwiftUI
import UIEngine

@main
struct UIEngineExampleApp: App {
    var body: some Scene {
        WindowGroup {
            UIEngine.TitleDescriptionGenerator.product(title: "Apple iPhone",
                                                       description: "6.1-inch Super Retina XDR display").view
        }
    }
}
