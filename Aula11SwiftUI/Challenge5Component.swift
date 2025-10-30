//
//  Challenge5Component.swift
//  Aula11SwiftUI
//
//  Created by Johnny Freire on 29/10/25.
//

import SwiftUI

struct Challenge5Component: View {
    let title : String
    let subtitle : String
    let hasBackground : Bool
    
    init(title: String, subtitle: String , hasBackground: Bool = true) {
        self.title = title
        self.subtitle = subtitle
        self.hasBackground = hasBackground
    }
    
    var body: some View {
        ZStack {
            HStack{
                VStack(alignment: .leading){
                    Text(title)
                        .font(.title3)
                        .bold()
                    Text(subtitle)
                        .font(.callout)
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundStyle(.blue)
                    .bold()
            }
            
        }
        .padding(.horizontal)
        .frame(height: 80)
        .background{
            if hasBackground {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.gray.opacity(0.4))
            }
        }
        
        
    }
}

#Preview {
    Challenge5Component(title: "Johnny", subtitle: "Desenvolvedor SwiftUI")
}
