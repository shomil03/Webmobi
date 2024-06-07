//
//  ContentView.swift
//  Webmobi
//
//  Created by Shomil Singh on 07/06/24.
//

import SwiftUI
import CoreImage.CIFilterBuiltins

struct ContentView: View {
    var body: some View {
            VStack {
                ButtonStyle(text: "Share my card", image: "chevron.down")
                    .padding(.bottom , 25)
                
                
                if let qrcodeImage = generateQRCode(from: "https://www.nexalink.co/") {
                    Image(uiImage: qrcodeImage)
                        .resizable()
                        .interpolation(.none)
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .background(Color.black)
                }else{
                    Text("Failed to get qrcode")
                }
                CardView()
                    .padding()
                
                ButtonStyle(text: "Share with AirDrop", image: "wifi")
                    .padding()
                
                
            }
            .padding()
    }
}

#Preview {
    ContentView()
}
