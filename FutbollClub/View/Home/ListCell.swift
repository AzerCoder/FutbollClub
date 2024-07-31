//
//  listCell.swift
//  FutbollClub
//
//  Created by A'zamjon Abdumuxtorov on 31/07/24.
//

import SwiftUI

struct ListCell: View {
    var body: some View {
        HStack(spacing:30){
            VStack{
                Image("navlogo")
                    .resizable()
                    .frame(width: 40,height: 40)
                Text("Navbahor")
                    .font(.caption)
            }
            
            VStack{
                Text("PF Liga")
                    .font(.caption2)
                Text("Juma 24 Yan".uppercased())
                HStack{
                    Image(systemName: "clock")
                    Text("20:00")
                }  .font(.caption2)
                .foregroundColor(.red)
            }
            
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 40,height: 40)
                Text("Qizilqum")
                    .font(.caption)
            }
        }.frame(height: 75)
    }
}

#Preview {
    ListCell()
        .background(.gray)
}
