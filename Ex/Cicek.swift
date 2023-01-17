//
//  Cicek.swift
//  Ex
//
//  Created by Adnan Cobanoglu on 12.01.2023.
//

import SwiftUI

struct Cicek: View {
    var Cicek=[
    "Papatya ve Gerbera",
    "Şerit Led",
    "Dekoratif Led",
    "Saksı Çiçeği",
    "Çikolata"
    ]
    
    var body: some View {
            NavigationView {
                List {
                    ForEach(Cicek, id: \.self) { name in
                        NavigationLink(destination: Text(name)) {
                            Text(name)
                        }
                    }
                }.listStyle(.plain)
            }
            
        }
}

struct Cicek_Previews: PreviewProvider {
    static var previews: some View {
        Cicek()
    }
}
