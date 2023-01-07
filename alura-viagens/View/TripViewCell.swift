//
//  TripViewCell.swift
//  alura-viagens
//
//  Created by Adolfho Athyla on 07/01/23.
//

import SwiftUI

struct TripViewCell: View {
    
    var viagem: Viagem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viagem.titulo)
            Image(viagem.imagem)
                .resizable()
                .frame(height: 125)
            
            HStack {
                Text(viagem.quantidadeDeDias)
                Spacer()
                Text(viagem.valor)
            }
        }
    }
}

struct TripViewCell_Previews: PreviewProvider {
    static var previews: some View {
        TripViewCell(viagem: viagens.first!)
            .previewLayout(.fixed(width: 350, height: 200))
    }
}
