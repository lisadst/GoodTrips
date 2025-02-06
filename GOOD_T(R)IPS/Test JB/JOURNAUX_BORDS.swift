//
//  JOURNAUX_BORDS.swift
//  AFP2025
//
//  Created by apprenant82 on 30/01/2025.
//

import SwiftUI

struct JOURNAUX_BORDS: View {
    @State var comment: String = ""
    @State var modal_fullscreen = false
    @State var modal_fullscreen2 = false
    @State var modal_fullscreen3 = false
    @State var modal_fullscreen4 = false
    @State var modal_japon1 = false
    @State var modal_japon2 = false
    @State var modal_japon3 = false
    @State var modal_europe1 = false
    @State var modal_europe2 = false
    @State var modal_europe3 = false
   // @State private var searchText = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                Text("Les plus likés ❤️")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .background(.eggshell)
                    .cornerRadius(80)
      
                
                
                
                
                
                
                
                
                
                // PAGE LIKE 1
                ScrollView(.horizontal){
                    HStack{
                        Button(action: {
                            
                            modal_fullscreen.toggle()
                            
                        },
                               
                               label: {
                            
                            PAGE_POST_EXEMPLE(card: cardNews[0])
                                .foregroundStyle(.darkgreen)
                                .padding(.bottom,15)
                                .sheet(isPresented: $modal_fullscreen){
                                    HStack{
                                        Image(systemName: "arrow.left")
                                            .padding()
                                        Image(systemName: "arrow.right")
                                        
                                    }
                                    ScrollView(.horizontal){
                                        
                                        HStack{
                                            VStack{
                                                ScrollView{
                                                    Modale_JB(card: cardNews[0])
                                                        .padding()
                                                    VStack{
                                                        PAGE_COMMENTAIRE(comment_page: comments[0])
                                                        PAGE_COMMENTAIRE(comment_page: comments[1])
                                                        PAGE_COMMENTAIRE(comment_page: comments[2])
                                                        PAGE_COMMENTAIRE(comment_page: comments[3])
                                                        PAGE_COMMENTAIRE(comment_page: comments[4])
                                                    }
                                                }
                                            }
                                            VStack{
                                                ScrollView{
                                                    Modale_JB(card: cardNews[1])
                                                        .padding()
                                                    VStack{
                                                        PAGE_COMMENTAIRE(comment_page: comments[0])
                                                        PAGE_COMMENTAIRE(comment_page: comments[1])
                                                        PAGE_COMMENTAIRE(comment_page: comments[2])
                                                        PAGE_COMMENTAIRE(comment_page: comments[3])
                                                        PAGE_COMMENTAIRE(comment_page: comments[4])
                                                    }
                                                }
                                            }
                                            VStack{
                                                ScrollView{
                                                    Modale_JB(card: cardNews[2])
                                                        .padding()
                                                    VStack{
                                                        PAGE_COMMENTAIRE(comment_page: comments[0])
                                                        PAGE_COMMENTAIRE(comment_page: comments[1])
                                                        PAGE_COMMENTAIRE(comment_page: comments[2])
                                                        PAGE_COMMENTAIRE(comment_page: comments[3])
                                                        PAGE_COMMENTAIRE(comment_page: comments[4])
                                                    }
                                                }
                                            }
                                            VStack{
                                                ScrollView{
                                                    Modale_JB(card: cardNews[12])
                                                        .padding()
                                                    VStack{
                                                        PAGE_COMMENTAIRE(comment_page: comments[0])
                                                        PAGE_COMMENTAIRE(comment_page: comments[1])
                                                        PAGE_COMMENTAIRE(comment_page: comments[2])
                                                        PAGE_COMMENTAIRE(comment_page: comments[3])
                                                        PAGE_COMMENTAIRE(comment_page: comments[4])
                                                    }
                                                }
                                            }
                                            
                                        }
                                    }
                                    .presentationDetents([.height(900)])
                                    .foregroundStyle(.darkgreen)
                                    
                                }
                        })
                        
                        // PAGE LIKE 2
                        ScrollView(.horizontal){
                        Button(action: {
                            
                            modal_fullscreen2.toggle()
                            
                        },
                               
                               label: {
                            
                            PAGE_POST_EXEMPLE(card: cardNews[1])
                                .foregroundStyle(.darkgreen)
                                .padding(.bottom,15)
                                .sheet(isPresented: $modal_fullscreen2){
                          
                                            
                                            HStack{
                                                Image(systemName: "arrow.left")
                                                    .padding()
                                                Image(systemName: "arrow.right")
                                                
                                            }
                                            ScrollView(.horizontal){
                                                
                                                HStack{
                                                    VStack{
                                                        ScrollView{
                                                            Modale_JB(card: cardNews[1])
                                                                .padding()
                                                            VStack{
                                                                PAGE_COMMENTAIRE(comment_page: comments[0])
                                                                PAGE_COMMENTAIRE(comment_page: comments[1])
                                                                PAGE_COMMENTAIRE(comment_page: comments[2])
                                                                PAGE_COMMENTAIRE(comment_page: comments[3])
                                                                PAGE_COMMENTAIRE(comment_page: comments[4])
                                                            }
                                                        }
                                                    }
                                                    VStack{
                                                        ScrollView{
                                                            Modale_JB(card: cardNews[2])
                                                                .padding()
                                                            VStack{
                                                                PAGE_COMMENTAIRE(comment_page: comments[0])
                                                                PAGE_COMMENTAIRE(comment_page: comments[1])
                                                                PAGE_COMMENTAIRE(comment_page: comments[2])
                                                                PAGE_COMMENTAIRE(comment_page: comments[3])
                                                                PAGE_COMMENTAIRE(comment_page: comments[4])
                                                            }
                                                        }
                                                    }
                                                    VStack{
                                                        ScrollView{
                                                            Modale_JB(card: cardNews[12])
                                                                .padding()
                                                            VStack{
                                                                PAGE_COMMENTAIRE(comment_page: comments[0])
                                                                PAGE_COMMENTAIRE(comment_page: comments[1])
                                                                PAGE_COMMENTAIRE(comment_page: comments[2])
                                                                PAGE_COMMENTAIRE(comment_page: comments[3])
                                                                PAGE_COMMENTAIRE(comment_page: comments[4])
                                                            }
                                                        }
                                                    }
                                                    VStack{
                                                        ScrollView{
                                                            Modale_JB(card: cardNews[0])
                                                                .padding()
                                                            VStack{
                                                                PAGE_COMMENTAIRE(comment_page: comments[0])
                                                                PAGE_COMMENTAIRE(comment_page: comments[1])
                                                                PAGE_COMMENTAIRE(comment_page: comments[2])
                                                                PAGE_COMMENTAIRE(comment_page: comments[3])
                                                                PAGE_COMMENTAIRE(comment_page: comments[4])
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            .presentationDetents([.height(900)])
                                            .foregroundStyle(.darkgreen)
                                        }
                                        
                                    
                                    .presentationDetents([.height(900)])
                                    .foregroundStyle(.darkgreen)
                                    
                             
                        })
                    }
                       
                        //PAGE LIKE 3
                        ScrollView(.horizontal){
                        Button(action: {
                            
                            modal_fullscreen3.toggle()
                            
                        },
                               
                               label: {
                            
                            PAGE_POST_EXEMPLE(card: cardNews[2])
                                .foregroundStyle(.darkgreen)
                                .padding(.bottom,15)
                                .sheet(isPresented: $modal_fullscreen3){
                                    
                                   
                                        
                                        HStack{
                                            Image(systemName: "arrow.left")
                                                .padding()
                                            Image(systemName: "arrow.right")
                                            
                                        }
                                    ScrollView(.horizontal){
                                            
                                            HStack{
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[2])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[12])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[0])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[1])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        .presentationDetents([.height(900)])
                                        .foregroundStyle(.darkgreen)
                                        
                                        
                                    }
                                    .presentationDetents([.height(900)])
                                    .foregroundStyle(.darkgreen)
                                    
                                    
                                })
                        }
                        
                        //LIKE 4
                        ScrollView(.horizontal){
                        Button(action: {
                            
                            modal_fullscreen4.toggle()
                            
                        },
                               
                               label: {
                            
                            PAGE_POST_EXEMPLE(card: cardNews[12])
                                .foregroundStyle(.darkgreen)
                                .padding(.bottom,15)
                                .sheet(isPresented: $modal_fullscreen4){
                                    
                                   
                                        
                                        HStack{
                                            Image(systemName: "arrow.left")
                                                .padding()
                                            Image(systemName: "arrow.right")
                                            
                                        }
                                    ScrollView(.horizontal){
                                            
                                            HStack{
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[12])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[0])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[1])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[2])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        .presentationDetents([.height(900)])
                                        .foregroundStyle(.darkgreen)
                                        
                                        
                                    }
                                    .presentationDetents([.height(900)])
                                    .foregroundStyle(.darkgreen)
                                    
                                    
                                })
                        }
                        
                    }
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                // PAGE JAPON 1
               
                    Text("Voyages au Japon 🏯")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                        .background(.eggshell)
                        .cornerRadius(80)
                  
                ScrollView(.horizontal){
                HStack{
                    
                        Button(action: {
                            
                            modal_japon1.toggle()
                            
                        },
                               
                               label: {
                            
                            PAGE_POST_EXEMPLE(card: cardNews[13])
                                .foregroundStyle(.darkgreen)
                                .padding(.bottom,15)
                                .sheet(isPresented: $modal_japon1){
                                    
                                    
                                    
                                    HStack{
                                        Image(systemName: "arrow.left")
                                            .padding()
                                        Image(systemName: "arrow.right")
                                        
                                    }
                                    ScrollView(.horizontal){
                                        
                                        HStack{
                                            VStack{
                                                ScrollView{
                                                    Modale_JB(card: cardNews[13])
                                                        .padding()
                                                    VStack{
                                                        PAGE_COMMENTAIRE(comment_page: comments[0])
                                                        PAGE_COMMENTAIRE(comment_page: comments[1])
                                                        PAGE_COMMENTAIRE(comment_page: comments[2])
                                                        PAGE_COMMENTAIRE(comment_page: comments[3])
                                                        PAGE_COMMENTAIRE(comment_page: comments[4])
                                                    }
                                                }
                                            }
                                            VStack{
                                                ScrollView{
                                                    Modale_JB(card: cardNews[14])
                                                        .padding()
                                                    VStack{
                                                        PAGE_COMMENTAIRE(comment_page: comments[0])
                                                        PAGE_COMMENTAIRE(comment_page: comments[1])
                                                        PAGE_COMMENTAIRE(comment_page: comments[2])
                                                        PAGE_COMMENTAIRE(comment_page: comments[3])
                                                        PAGE_COMMENTAIRE(comment_page: comments[4])
                                                    }
                                                }
                                            }
                                            VStack{
                                                ScrollView{
                                                    Modale_JB(card: cardNews[15])
                                                        .padding()
                                                    VStack{
                                                        PAGE_COMMENTAIRE(comment_page: comments[0])
                                                        PAGE_COMMENTAIRE(comment_page: comments[1])
                                                        PAGE_COMMENTAIRE(comment_page: comments[2])
                                                        PAGE_COMMENTAIRE(comment_page: comments[3])
                                                        PAGE_COMMENTAIRE(comment_page: comments[4])
                                                    }
                                                }
                                            }
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                        }
                                    }
                                    
                                }
                                .presentationDetents([.height(900)])
                                .foregroundStyle(.darkgreen)
                            
                            
                        })
                        
                        
                        // PAGE JAPON 2
                        
                      
                            Button(action: {
                                
                                modal_japon2.toggle()
                                
                            },
                                   
                                   label: {
                                
                                PAGE_POST_EXEMPLE(card: cardNews[14])
                                    .foregroundStyle(.darkgreen)
                                    .padding(.bottom,15)
                                    .sheet(isPresented: $modal_japon2){
                                        
                                        
                                        
                                        HStack{
                                            Image(systemName: "arrow.left")
                                                .padding()
                                            Image(systemName: "arrow.right")
                                            
                                        }
                                        ScrollView(.horizontal){
                                            
                                            HStack{
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[14])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[15])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[13])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                            }
                                        }
                                        
                                    }
                                    .presentationDetents([.height(900)])
                                    .foregroundStyle(.darkgreen)
                                
                                
                            })
                        
                        
                        // PAGE JAPON 3
                        
                      
                            Button(action: {
                                
                                modal_japon3.toggle()
                                
                            },
                                   
                                   label: {
                                
                                PAGE_POST_EXEMPLE(card: cardNews[15])
                                    .foregroundStyle(.darkgreen)
                                    .padding(.bottom,15)
                                    .sheet(isPresented: $modal_japon3){
                                        
                                        
                                        
                                        HStack{
                                            Image(systemName: "arrow.left")
                                                .padding()
                                            Image(systemName: "arrow.right")
                                            
                                        }
                                        ScrollView(.horizontal){
                                            
                                            HStack{
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[15])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[13])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[14])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                            }
                                        }
                                        
                                    }
                                    .presentationDetents([.height(900)])
                                    .foregroundStyle(.darkgreen)
                                
                                
                            })
                        
                        
                        
                    }
                    
                }
                
                
                // PAGE EUROPE 1
                
                Text("Voyages en Europe")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .background(.eggshell)
                    .cornerRadius(80)
                
                ScrollView(.horizontal){
                HStack{
                    
                        Button(action: {
                            
                            modal_europe1.toggle()
                            
                        },
                               
                               label: {
                            
                            PAGE_POST_EXEMPLE(card: cardNews[16])
                                .foregroundStyle(.darkgreen)
                                .padding(.bottom,15)
                                .sheet(isPresented: $modal_europe1){
                                    
                                    
                                    
                                    HStack{
                                        Image(systemName: "arrow.left")
                                            .padding()
                                        Image(systemName: "arrow.right")
                                        
                                    }
                                    ScrollView(.horizontal){
                                        
                                        HStack{
                                            VStack{
                                                ScrollView{
                                                    Modale_JB(card: cardNews[16])
                                                        .padding()
                                                    VStack{
                                                        PAGE_COMMENTAIRE(comment_page: comments[0])
                                                        PAGE_COMMENTAIRE(comment_page: comments[1])
                                                        PAGE_COMMENTAIRE(comment_page: comments[2])
                                                        PAGE_COMMENTAIRE(comment_page: comments[3])
                                                        PAGE_COMMENTAIRE(comment_page: comments[4])
                                                    }
                                                }
                                            }
                                            VStack{
                                                ScrollView{
                                                    Modale_JB(card: cardNews[17])
                                                        .padding()
                                                    VStack{
                                                        PAGE_COMMENTAIRE(comment_page: comments[0])
                                                        PAGE_COMMENTAIRE(comment_page: comments[1])
                                                        PAGE_COMMENTAIRE(comment_page: comments[2])
                                                        PAGE_COMMENTAIRE(comment_page: comments[3])
                                                        PAGE_COMMENTAIRE(comment_page: comments[4])
                                                    }
                                                }
                                            }
                                            VStack{
                                                ScrollView{
                                                    Modale_JB(card: cardNews[18])
                                                        .padding()
                                                    VStack{
                                                        PAGE_COMMENTAIRE(comment_page: comments[0])
                                                        PAGE_COMMENTAIRE(comment_page: comments[1])
                                                        PAGE_COMMENTAIRE(comment_page: comments[2])
                                                        PAGE_COMMENTAIRE(comment_page: comments[3])
                                                        PAGE_COMMENTAIRE(comment_page: comments[4])
                                                    }
                                                }
                                            }
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                        }
                                    }
                                    
                                }
                                .presentationDetents([.height(900)])
                                .foregroundStyle(.darkgreen)
                            
                            
                        })
                        
                        
                        // PAGE EUROPE 2
                        
                      
                            Button(action: {
                                
                                modal_europe2.toggle()
                                
                            },
                                   
                                   label: {
                                
                                PAGE_POST_EXEMPLE(card: cardNews[17])
                                    .foregroundStyle(.darkgreen)
                                    .padding(.bottom,15)
                                    .sheet(isPresented: $modal_europe2){
                                        
                                        
                                        
                                        HStack{
                                            Image(systemName: "arrow.left")
                                                .padding()
                                            Image(systemName: "arrow.right")
                                            
                                        }
                                        ScrollView(.horizontal){
                                            
                                            HStack{
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[17])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[18])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[16])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                            }
                                        }
                                        
                                    }
                                    .presentationDetents([.height(900)])
                                    .foregroundStyle(.darkgreen)
                                
                                
                            })
                        
                        
                        // PAGE EUROPE 3
                        
                      
                            Button(action: {
                                
                                modal_europe3.toggle()
                                
                            },
                                   
                                   label: {
                                
                                PAGE_POST_EXEMPLE(card: cardNews[18])
                                    .foregroundStyle(.darkgreen)
                                    .padding(.bottom,15)
                                    .sheet(isPresented: $modal_europe3){
                                        
                                        
                                        
                                        HStack{
                                            Image(systemName: "arrow.left")
                                                .padding()
                                            Image(systemName: "arrow.right")
                                            
                                        }
                                        ScrollView(.horizontal){
                                            
                                            HStack{
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[18])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[16])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                VStack{
                                                    ScrollView{
                                                        Modale_JB(card: cardNews[17])
                                                            .padding()
                                                        VStack{
                                                            PAGE_COMMENTAIRE(comment_page: comments[0])
                                                            PAGE_COMMENTAIRE(comment_page: comments[1])
                                                            PAGE_COMMENTAIRE(comment_page: comments[2])
                                                            PAGE_COMMENTAIRE(comment_page: comments[3])
                                                            PAGE_COMMENTAIRE(comment_page: comments[4])
                                                        }
                                                    }
                                                }
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                            }
                                        }
                                        
                                    }
                                    .presentationDetents([.height(900)])
                                    .foregroundStyle(.darkgreen)
                                
                                
                            })
                        
                        
                        
                    }
                    
                }
                
                
                
                
                
                
                
                
                
                
                .navigationTitle("Journaux de bord")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink(destination: PROFIL1(), label: {
                            Image(systemName:"person.crop.circle.fill")
                                .foregroundColor(.black)
                        })
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink(destination: Page_notifications(), label: {
                            Image(systemName:"bell")
                                .foregroundColor(.black)
                        })
                    }
                }
            }
            
           // .searchable(text: $searchText)
            
            
        }
                   
                   }
}

#Preview {
    JOURNAUX_BORDS()
}
