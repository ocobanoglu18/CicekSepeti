//
//  SanaÖzel.swift
//  Ex
//
//  Created by Adnan Cobanoglu on 12.01.2023.
//

import SwiftUI

struct SanaO_zel: View {
    
    var SanaOzelList=[
    "Papatya ve Gerbera",
    "Şerit Led",
    "Dekoratif Led",
    "Saksı Çiçeği",
    "Çikolata",
    "Gül",
    "Hediye Sepetleri",
    "Orkide",
    "Teraryum",
    "Meyve Sepeti",
    "Kahve Fincan Takımı",
    "Yapay Çicek"
    ]
    
    var body: some View {
            NavigationView {
                List {
                    ForEach(SanaOzelList, id: \.self) { name in
                        NavigationLink(destination: Text(name)) {
                            Text(name)
                        }
                    }
                }.listStyle(.plain)
            }.navigationBarTitle("")
            
        }
    }

struct SanaO_zel_Previews: PreviewProvider {
    static var previews: some View {
        SanaO_zel()
    }
}
