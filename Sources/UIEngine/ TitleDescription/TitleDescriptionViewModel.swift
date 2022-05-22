//
//  TitleDescriptionViewModel.swift
//  UIEngine
//
//  Created by Kanwar Zorawar Singh Rana on 5/19/22.
//

import SwiftUI

@available(iOS 13.0.0, *)
open class TitleDescriptionViewModel: ObservableObject {
    
    @Published var titleDecorator: TextTheme?
    @Published var descriptionDecorator: TextTheme?
    
    var titleFont: Font?
    var descriptionFont: Font?
    
    init( titleDecorator: TextTheme?,
          descriptionDecorator: TextTheme?) {
        self.titleDecorator = titleDecorator
        self.descriptionDecorator = descriptionDecorator
    }
}
