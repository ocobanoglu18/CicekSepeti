//
//  MainPage.swift
//  Ex
//
//  Created by Adnan Cobanoglu on 12.01.2023.
//

import SwiftUI

struct MainPage: View {
        init() {
            UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).backgroundColor = .white
            UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).tintColor = .black
     
        }
        
        var mainPageListCategories = [
            "Günün Fırsatları",
            "Aynı Gün Çiçek",
            "Kişiye Özel Hediye",
            "Doğum Günü",
            "Lezzetli Çikolatalar"
        ]
        
        @State var searchText = ""
        
        var body: some View {
            ZStack {
                CustomColor.cardColor
                    .edgesIgnoringSafeArea(.all)
                NavigationView {
                    ScrollView(showsIndicators: false) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(mainPageListCategories, id: \.self) { name in
                                    VStack {
                                        Spacer()
                                        Circle()
                                            .fill(
                                                LinearGradient(gradient: Gradient(colors: [.purple, .pink, .white, .mint]), startPoint: .leading, endPoint: .trailing)
                                                        )
                                            .frame(width: 60, height: 50)
                                        Spacer()
                                        Text(name + "\n")
                                            .font(.subheadline)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: 90)
                                        Spacer()
                                    }
                                    .background(CustomColor.cardColor)
                                }
                                .background(CustomColor.cardColor)
                            }
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 140)
                            .background(CustomColor.cardColor)
                            .ignoresSafeArea()
                        }
                            Spacer()
                                
                            VStack {
                                HStack{
                                    Image("image1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 400,height: 200)
                                    Spacer()
                                }
                                
                                HStack {
                                    Image("image2")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 400,height: 200)
                                    Spacer()
                                }
                                HStack {
                                    Image("image3")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 400,height: 200)
                                    Spacer()
                                }
                                
                                
                            } .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight:.infinity)
                                .background(CustomColor.cardColor)
                                .ignoresSafeArea()
                        
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight:.infinity)
                    .background(CustomColor.cardColor)
                        .ignoresSafeArea()
                }
                .padding()
            }
        }
    }


struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
