//
//  ContentView.swift
//  BusinessCard
//
//  Created by Mithilesh Singh on 09/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.init(hex: 0x2980b9).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Image("mithilesh")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .contentMargins(20)
                    .frame(width: 200,height: 200,alignment: .center)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay{
                        Circle().stroke(Color.white, lineWidth: 2)
                    }
                
                Text("Mithilesh Singh")
                    .font(Font.custom("ProtestRevolution-Regular", size: 24))
                    .bold()
                    .foregroundColor(.white)
                Text("Mobile App Engineer")
                    .font(.system(size: 18))
                    .foregroundColor(Color.init(hex:0xffffff,alpha: 0.5))
                
                Divider().background(.white)
                
                InfoView(text: "+91 9873083937", imageName: "phone.fill")
                InfoView(text: "mithileshssingh@gmail.com", imageName: "envelope.fill")
                
            }
            
        }
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

#Preview {
    ContentView()
}
