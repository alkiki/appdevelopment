import Foundation
import SwiftUI


//layout of the selected cinema cscreenings 
struct DataBfiRow: View {
    let bfi: DataBfi
        @State private var isDescriptionExpanded = false
        var body: some View {
            Link(destination: bfi.url) {
                VStack {
                    HStack {
                        Image(bfi.ImageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 200)
                            .onTapGesture {
                                withAnimation {
                                    isDescriptionExpanded.toggle()
                                }
                            }
                        VStack(alignment: .leading) {
                            Text(bfi.title)
                                .foregroundColor(.black)
                                .bold()

                            Text(bfi.description)
                                .foregroundColor(.gray)
                                .lineLimit(isDescriptionExpanded ? nil : 2)
                                .truncationMode(.tail)
                                .onTapGesture {
                                    withAnimation {
                                        isDescriptionExpanded.toggle()
                                    }
                                }
                            
                            if !isDescriptionExpanded {
                                Text("Read more...")
                                    .foregroundColor(.blue)
                                    .onTapGesture {
                                        withAnimation {
                                            isDescriptionExpanded.toggle()
                                        }
                                    }
                            }
                            Link(destination: bfi.url){
                                Text(bfi.time)
                                    .padding(3)
                                    .foregroundColor(.black)
                                    .background(Color(red: 245/255, green: 230/255, blue: 164/255))
                                    .cornerRadius(10)
                            }
                        }
                    }
                    .padding()
                    .frame(maxWidth: 500, maxHeight: 600)
                }
            }
            .padding()
        }
}

struct DataBfiRow_Previews: PreviewProvider {
    static var previews: some View {
        DataBfiRow(bfi: DataBfi.examples()[0])
    }
}
