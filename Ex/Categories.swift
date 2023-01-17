//
//  Categories.swift
//  Ex
//
//  Created by Adnan Cobanoglu on 12.01.2023.
//

import SwiftUI

struct Categories: View {
    @State var sanaÖzel=false
    @State var çicek=false

    var body: some View {
        VStack {
            HStack {
                VStack {
                    Button {
                        sanaÖzel=true
                    } label: {
                        VStack {
                            Image(systemName: "gift")
                                .foregroundColor(CustomColor.blueColor)
                                .font(.title)
                            Text("Sana Özel")
                                .foregroundColor(CustomColor.blueColor)
                        }
                    }.padding(.all, 10)
                        .padding(.top, 50)

                    Button {
                        çicek=true
                        sanaÖzel.toggle()
                    } label: {
                        VStack {
                            Image(systemName: "giftcard.fill")
                                .foregroundColor(CustomColor.blueColor)
                                .font(.title)
                            Text("Çicek")
                                .foregroundColor(CustomColor.blueColor)
                        }
                    }.padding(.all, 10)
                        
                    Button {} label: {
                        VStack {
                            Image(systemName: "calendar")
                                .foregroundColor(CustomColor.blueColor)
                                .font(.title)
                            Text("Doğum Günü")
                                .foregroundColor(CustomColor.blueColor)
                        }
                    }.padding(.all, 10)

                    Button {} label: {
                        VStack {
                            Image(systemName: "command.circle")
                                .foregroundColor(CustomColor.blueColor)
                                .font(.title)
                            Text("Hediye")
                                .foregroundColor(CustomColor.blueColor)
                        }
                    }.padding(.all, 10)

                    Button {} label: {
                        VStack {
                            Image(systemName: "rectangle.and.pencil.and.ellipsis")
                                .font(.title)
                                .foregroundColor(CustomColor.blueColor)
                            Text("Kişiye Özel")
                                .foregroundColor(CustomColor.blueColor)
                        }
                    }.padding(.all, 10)
                        
                    Button {} label: {
                        VStack {
                            Image(systemName: "calendar.day.timeline.leading")
                                .font(.title)
                                .foregroundColor(CustomColor.blueColor)
                            Text("Aynı Gün")
                                .foregroundColor(CustomColor.blueColor)
                        }
                    }.padding(.all, 10)
                        
                    Button {} label: {
                        VStack {
                            Image(systemName: "seal")
                                .font(.title)
                                .foregroundColor(CustomColor.blueColor)
                            Text("Yenilebilir Çiçek")
                                .foregroundColor(CustomColor.blueColor)
                        }
                    }.padding(.all, 10)
                    Spacer()
                }
                .frame(maxWidth: 120, maxHeight: .infinity)
                .background(CustomColor.cardColor)
                
                Spacer()
                VStack {
                    if sanaÖzel {
                        SanaO_zel()
                            .padding(.top, 50)
                    }else if (çicek==true) {
                        Cicek()
                            .padding(.top, 50)
                        
                    }
                    
                }
                Spacer()
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(CustomColor.cardColor)
    }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories()
    }
}
