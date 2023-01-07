//
//  ContentView.swift
//  alura-viagens
//
//  Created by Adolfho Athyla on 22/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        GeometryReader { view in
            VStack {
                HeaderView()
                    .frame(width: view.size.width, height: horizontalSizeClass == .compact ? 200 : 310, alignment: .top)
                List(viagens) { viagem in
                    TripViewCell(viagem: viagem)
                }
                .offset(y: 30)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color(red: 240/255, green: 240/255, blue: 246/255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
