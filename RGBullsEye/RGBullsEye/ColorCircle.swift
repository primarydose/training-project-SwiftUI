

import SwiftUI

struct ColorCircle: View {
  let rgb: RGB
  let size: CGFloat

  var body: some View {
    
    ZStack {
        Color.element
           
        Circle()
            .fill(Color.element)
            .northWestShadow()
        Circle()
            .foregroundColor(Color(red: rgb.red, green: rgb.green, blue: rgb.blue))
            .padding()
           
    }.frame(width: size, height: size)
  }
}

struct ColorCircle_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
        Color .element
        ColorCircle(rgb: RGB(), size: 200)
    } .frame(width: 300, height: 300)
    .previewLayout(.sizeThatFits)
  }
}
