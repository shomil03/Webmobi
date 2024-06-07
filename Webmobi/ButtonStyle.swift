//
//  ButtonStyle.swift
//  Webmobi
//
//  Created by Shomil Singh on 07/06/24.
//

import SwiftUI

struct ButtonStyle: View {
    let text : String
    let image : String
    var body: some View {
        VStack{
            Label{
                Text("\(text)")
                    .padding()
            } icon :{
                Image(systemName: image)
            }
        }
        .frame(width: 275 , height: 50)
        .background(Color.orange)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

#Preview {
    ButtonStyle(text: "Demo Text", image: "square.and.arrow.up" )
}
