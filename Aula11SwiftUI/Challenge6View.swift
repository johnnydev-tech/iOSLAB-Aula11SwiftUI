//
//  Challenge6View.swift
//  Aula11SwiftUI
//
//  Created by Johnny Freire on 29/10/25.
//

import SwiftUI

struct Challenge6View: View {
    let title : String
    let subtitle : String
    let image : String
    
    var body: some View {
        
        VStack{
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 200,height: 200)
                .clipShape(Circle()
                )
            Challenge5Component(title: title, subtitle: subtitle, hasBackground: false)
            Spacer()
        }
        .padding()
        .frame(height: 420)
        .background(RoundedRectangle(cornerRadius: 16)
            .fill(Color.gray.opacity(0.4))
        )
        .padding()
        
    }
}

#Preview {
    Challenge6View(
        title: "Johnny", subtitle: "Desenvolvedor Mobile", image: "me"
    )
}


