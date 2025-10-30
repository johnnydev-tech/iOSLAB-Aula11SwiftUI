//
//  ContentView.swift
//  Aula11SwiftUI
//
//  Created by Johnny Freire on 29/10/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                VStack(spacing:12){
                    ForEach(1...4, id: \.self){ i in
                        let title = "\(i) - Johnny Freire"
                        let subtitle = "Desenvolvedor \(i)"
                        let image = "me"
                        NavigationLink {
                            Challenge6View(
                                title: title,
                                subtitle: subtitle,
                                image: image
                            )
                        } label: {
                            Challenge5Component(
                                title: title,
                                subtitle: subtitle,
                            )
                        }
                        .buttonStyle(.plain)
                        
                    }
                }
                
            }.padding(.horizontal)
        }
    }
}

#Preview {
    ContentView()
}
