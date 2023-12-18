//
//  ContentView.swift
//  ScrollView_SwiftUi
//
//  Created by SHUAA on 18-12-2023.
//

import SwiftUI
struct ContentView: View {
    let images = ["circle.fill","square.fill","rectangle.fill","triangle.fill","diamond.fill"]
    let shapeName = ["circle","square","rectangle","triangle","diamond"]
    var body: some View {
        VStack {
            
            //horizontal
            ScrollView(.horizontal,showsIndicators: false){
                HStack(spacing: 10){
                    ForEach(0..<images.count,id: \.self){ number in
                        VStack(alignment: .leading,spacing: 16.0){
                            Image(systemName: "\(images[number])")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200,height: 200)
                            VStack{
                                
                                Text("\(shapeName[number])")
                                    .font(.headline)
    
                            }.padding(.bottom)
                            .padding(.horizontal)
                            
                        }
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 24.0))
                        .shadow(radius: 8)
                        .frame(width: 212,height: 350)
                        
                    }
                }
                .padding(.horizontal,20)
            }
            
            //vertical
                ScrollView(.vertical,showsIndicators: false){
                    VStack(spacing: 10){
                        ForEach(0..<images.count,id: \.self){ number in
                            VStack(alignment: .leading,spacing: 16.0){
                                Image(systemName: "\(images[number])")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 200,height: 200)
                                VStack{
                                    
                                    Text("\(shapeName[number])")
                                        .font(.headline)
                                    
                                }.padding(.bottom)
                                    .padding(.horizontal)
                                
                            }
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 24.0))
                            .shadow(radius: 8)
                            .frame(width: 212,height: 350)
                            
                        }
                    .padding(.horizontal,20)
                }
            }

        }
    }
}


#Preview {
    ContentView()
}
