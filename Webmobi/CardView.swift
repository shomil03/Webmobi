//
//  CardView.swift
//  Webmobi
//
//  Created by Shomil Singh on 07/06/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(spacing: 15){
            Label("Share my card", systemImage: "square.and.arrow.up")
            Label("Add card to wallet", systemImage: "wallet.pass.fill")
            Label("Add card to homecreen", systemImage: "menucard.fill")
            Label("Create Email signature", systemImage: "envelope.fill")
            Label("Create virtual background", systemImage: "person.and.background.dotted")
        }
        .padding()
        .background(Color.secondary)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        
        
    }
}

#Preview {
    CardView()
}
