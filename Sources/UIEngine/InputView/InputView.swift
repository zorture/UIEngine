//
//  InputView.swift
//  
//
//  Created by Kanwar Zorawar Singh Rana on 6/1/22.
//

import SwiftUI

@available(iOS 14.0.0, *)
public struct InputView: View {
    
    enum ActionType {
        case insert
        case deletion
    }
    
    @State private var text: String
    @State private var previousValue: String = ""
    let formatter: ((String) -> String)?
    public init( text: String,
                 formatter: ((String) -> String)? = .none) {
        self.text = text
        self.formatter = formatter
    }
    
    public var body: some View {
        VStack(alignment: .center) {
            TextField("", text:$text)
                .onChange(of: text) { newValue in
                    performAction(value: newValue)
                }
        }
    }
    
    func performAction(value: String) -> Void {
        if detectAction == .insert {
            text = formatter?(value) ?? text
        }
        previousValue = text
    }
    
    private var detectAction: ActionType {
        return text.count > previousValue.count ? .insert : .deletion
    }
}

@available(iOS 14.0.0, *)
struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(text: "Hi")
    }
}
