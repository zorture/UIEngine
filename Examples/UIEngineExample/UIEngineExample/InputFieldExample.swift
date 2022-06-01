//
//  InputFieldExample.swift
//  UIEngineExample
//
//  Created by Kanwar Zorawar Singh Rana on 6/1/22.
//

import SwiftUI
import UIEngine

struct InputFieldExample: View {
    @State var text: String = ""
    var body: some View {
        InputView(text: text, formatter: { string in
            var text = string
            switch string.count {
            case 1:
                text.insert("(", at: text.startIndex)
            case 4:
                text.insert(")", at: text.endIndex)
            case 6:
                text.insert("-", at: text.index(before: text.endIndex))
            case 10:
                text.insert("-", at: text.index(before: text.endIndex))
            default:
                break
            }
            return text
        })
    }
}

struct InputFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        InputFieldExample(text: "hi")
    }
}
