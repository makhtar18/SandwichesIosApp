//
//  SandwichDetail.swift
//  Sandwiches
//
//  Created by Mehvish Akhtar on 26/04/23.
//

import SwiftUI

struct SandwichDetail: View {
    let sandwich: Sandwich
    @State private var zoomed=false
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            
            Image((sandwich.imageName))
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation{
                        zoomed.toggle()
                    }
                }
            Spacer(minLength: 0)
            
            if(sandwich.isSpicy && !zoomed){
                HStack {
                    Spacer()
                    Label("Spicy", systemImage: "flame.fill")
                    Spacer()
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .font(Font/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/.smallCaps())
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.yellow)
                .transition(.move(edge: .bottom))
            }
            
        }
        .navigationTitle(sandwich.name)
        .edgesIgnoringSafeArea(.bottom)
            
    }
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SandwichDetail(sandwich: testData[1])
        }
    }
}
