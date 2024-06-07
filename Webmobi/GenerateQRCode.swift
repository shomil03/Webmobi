//
//  GenerateQRCode.swift
//  Webmobi
//
//  Created by Shomil Singh on 07/06/24.
//

import Foundation
import SwiftUI
import CoreImage.CIFilterBuiltins

func generateQRCode(from string : String) -> UIImage? {
    let data = string.data(using: String.Encoding.ascii)
    
    print("Data for QR code: \(String(describing: data))")
    
    if let filter = CIFilter(name: "CIQRCodeGenerator") {
        filter.setValue(data, forKey: "inputMessage")
        filter.setValue("Q", forKey: "inputCorrectionLevel")
        let transform = CGAffineTransform(scaleX: 10, y: 10)
        
        if let output = filter.outputImage?.transformed(by: transform) {
            let context = CIContext()
            if let cgImage = context.createCGImage(output, from: output.extent) {
                print("QR Code generated successfully")
                let uiImage = UIImage(cgImage: cgImage)
                print("UIImage size: \(uiImage.size)")
                return uiImage
            } else {
                print("Failed to create CGImage")
            }
        } else {
            print("Failed to transform image")
        }
    } else {
        print("Failed to create CIFilter")
    }
    print("QR Code generation failed")
    return nil
    }
