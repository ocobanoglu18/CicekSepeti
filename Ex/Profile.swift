//
//  Profile.swift
//  Ex
//
//  Created by Adnan Cobanoglu on 12.01.2023.
//

import SwiftUI

struct Profile: View {
    
    let hesabimListesi=[
        "Siparişlerim",
        "Kuponlarım",
        "Değerlendirmelerim",
        "Üyelik Bilgilerim",
        "Mesajlarım",
        "Adreslerim",
        "Hatırlatmalarım",
        "Kayıtlı Kartlarım",
        "Cüzdanım"
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(hesabimListesi, id: \.self){ baslik in
                VStack {
                    HStack{
                        CustomNavigationLink(title: baslik, title2: "doc"){
                        }
                        Spacer()
                    }
                    
                }
            }
                .navigationTitle("Hesabım")
                  .navigationBarTitleDisplayMode(.inline)
            }  .navigationTitle("Hesabım")
                .navigationBarTitleDisplayMode(.inline)
        }
   
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}

@ViewBuilder
func CustomNavigationLink<Detail: View>(title: String,title2:String,@ViewBuilder content: @escaping ()->Detail)->some View{
    
    NavigationLink {
        content()
    } label: {
        HStack(alignment: .firstTextBaseline, spacing: 4){
            
            Image(systemName:title2).foregroundColor(Color.black)
                .padding(.horizontal)
            
            Text(title)
                .font(.callout)
                .foregroundColor(Color.black)
            
            Spacer()
            
        }
        .foregroundColor(.black)
        .padding()
        .padding(.horizontal)
        .padding(.top,3)
    }
    
    
    
    
}

//struct hesabimListesi:Identifiable{
//
//    var basliklar=[
//        "Siparişlerim",
//        "Kuponlarım",
//        "Değerlendirmelerim",
//        "Üyelik Bilgilerim",
//        "Mesajlarım",
//        "Adreslerim",
//        "Hatırlatmalarım",
//        "Kayıtlı Kartlarım",
//        "Cüzdanım"
//    ]
//
//    var iconlar=[
//        "house",
//        "map",
//        "",
//
//    ]
//
//}
