//
//  InfoView.swift
//  BusinessCard
//
//  Created by Mithilesh Singh on 10/03/24.
//

import SwiftUI

struct InfoView: View {
    let text:String
    let imageName:String
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(height: 60)
            .foregroundColor(.white)
            .overlay{
                HStack{
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                }
            }
            .padding(.all)
    }
}

#Preview {
    InfoView(text: "hello", imageName: "phone.fill")
        .previewLayout(.sizeThatFits)
}
