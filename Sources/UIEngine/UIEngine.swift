//
//  UIEngine.swift
//  UIEngine
//
//  Created by Kanwar Zorawar Singh Rana on 5/19/22.
//

import SwiftUI

@available(iOS 13.0.0, *)
public enum TitleDescriptionGenerator {
    case product(title: String, description: String)
    case pricing(title: String, description: String)
    case cart(title: String, description: String)
    case custom(viewModel: TitleDescriptionViewModel)
    
    public var view: TitleDescriptionView {
        switch self {
        case .custom(let viewModel):
            return TitleDescriptionView(viewModel: viewModel)
        default:
            return TitleDescriptionView(viewModel: self.viewModel)
        }
    }
    
    public var viewModel: TitleDescriptionViewModel {
        switch self {
        case .product(let title, let description):
            let titleDecorator = TextTheme(title: title,
                                           font: Font.system(size: 20))
            let descriptionDecorator = TextTheme(title: description,
                                                 font: Font.system(size: 15))
            return TitleDescriptionViewModel(titleDecorator: titleDecorator,
                                             descriptionDecorator: descriptionDecorator)
        case .pricing(let title, let description):
            let titleDecorator = TextTheme(title: title,
                                           font: Font.system(size: 18))
            let descriptionDecorator = TextTheme(title: description,
                                                 font: Font.system(size: 16))
            return TitleDescriptionViewModel(titleDecorator: titleDecorator,
                                             descriptionDecorator: descriptionDecorator)
        case .cart(let title, let description):
            let titleDecorator = TextTheme(title: title,
                                           font: Font.system(size: 16))
            let descriptionDecorator = TextTheme(title: description,
                                                 font: Font.system(size: 14))
            return TitleDescriptionViewModel(titleDecorator: titleDecorator,
                                             descriptionDecorator: descriptionDecorator)
        default:
            let titleDecorator = TextTheme(title: "",
                                           font: Font.system(size: 20),
                                           textColor: .black,
                                           backgroundColor: .clear)
            let descriptionDecorator = TextTheme(title: "",
                                                 font: Font.system(size: 15),
                                                 textColor: .black,
                                                 backgroundColor: .clear)
            return TitleDescriptionViewModel(titleDecorator: titleDecorator,
                                             descriptionDecorator: descriptionDecorator)
        }
    }
}

