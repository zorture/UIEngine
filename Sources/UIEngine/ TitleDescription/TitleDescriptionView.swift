//
//  TitleDescriptionView.swift
//  UIEngine
//
//  Created by Kanwar Zorawar Singh Rana on 5/19/22.
//

import SwiftUI

@available(iOS 13.0.0, *)
struct TitleDescriptionView: View {
    @ObservedObject private var viewModel: TitleDescriptionViewModel
    
    init( viewModel: TitleDescriptionViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            
            if let decorator = viewModel.titleDecorator {
                Text(decorator.title)
                    .font(decorator.font)
                    .foregroundColor(decorator.textColor)
                    .background(decorator.backgroundColor)
            }
            
            if let decorator = viewModel.descriptionDecorator {
                Text(decorator.title)
                    .font(decorator.font)
                    .foregroundColor(decorator.textColor)
                    .background(decorator.backgroundColor)
            }
            
        }
        
    }
}

@available(iOS 13.0.0, *)
struct TitleDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        let titleDecorator = TextTheme(title: "Hello",
                                           font: Font.system(size: 20),
                                           textColor: .black,
                                           backgroundColor: .clear)
        let descriptionDecorator = TextTheme(title: "World",
                                           font: Font.system(size: 15),
                                           textColor: .black,
                                           backgroundColor: .clear)
        let viewModel = TitleDescriptionViewModel(titleDecorator: titleDecorator,
                                                  descriptionDecorator: descriptionDecorator)
        TitleDescriptionView(viewModel: viewModel)
    }
}
