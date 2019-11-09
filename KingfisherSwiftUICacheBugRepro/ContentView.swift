//
//  ContentView.swift
//  KingfisherSwiftUICacheBugRepro
//
//  Created by Nathan Bashaw on 11/9/19.
//  Copyright © 2019 Operator. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct ContentView: View {
    var resource: Resource {
        ImageResource(downloadURL: URL(string: "https://placekitten.com/g/200/300"), cacheKey: "my_cache_key")
    }
    var body: some View {
        VStack {
            Spacer()
            KFImage(source: .network(resource))
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
