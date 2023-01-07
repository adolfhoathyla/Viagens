//
//  HeaderView.swift
//  alura-viagens
//
//  Created by Adolfho Athyla on 07/01/23.
//

import SwiftUI

struct HeaderView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        GeometryReader { view in
            VStack {
                VStack {
                    Text("alura viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: horizontalSizeClass == .compact ? 20 : 30))
                        .padding(.top, 50)
                    Text("ESPECIAL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: horizontalSizeClass == .compact ? 20 : 30))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: horizontalSizeClass == .compact ? 23 : 33))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                .frame(width: view.size.width, height: horizontalSizeClass == .compact ? 200 : 310, alignment: .top)
                .background(Color.purple)
                
                HStack {
                    Button("Hotéis") {
                        
                    }
                    .font(.custom("Avenir Medium", size: horizontalSizeClass == .compact ? 17 : 24))
                    .frame(width: 100, height: 50)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                    .offset(x: horizontalSizeClass == .compact ? 50 : view.size.width/4)
                    
                    Spacer()
                    
                    Button("Pacotes") {
                        
                    }
                    .font(.custom("Avenir Medium", size: horizontalSizeClass == .compact ? 17 : 24))
                    .frame(width: 100, height: 50)
                    .foregroundColor(Color.white)
                    .background(Color.orange)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                    .offset(x: horizontalSizeClass == .compact ? -50 : -view.size.width/4)
                }
                .offset(y: -25)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.fixed(width: 400, height: 220))
    }
}
