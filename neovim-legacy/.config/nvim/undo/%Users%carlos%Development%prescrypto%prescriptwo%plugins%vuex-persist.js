Vim�UnDo� ���?��\C�%#-_����c�Q�bp_�����W                    '       '   '   '    ^b��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             \Ǯ     �                   �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             \Ǯ    �                   export default ({store}) => {        return new VuexPersistence({           /* your options */       }).plugin(store);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       \Ǯ�     �             �             �                    /* your options */5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       \Ǯ�    �               storage: window.localStorage5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       \ǯ#     �                   �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       \ǯ6     �      	              storage: window.localStorage5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       \ǯ?     �      	   
    5�_�                           ����                                                                                                                                                                                                                                                                                                                            	                    v       \ǯE     �         	          reducer: state => ,�                   reducer: state => {           },5�_�         	                  ����                                                                                                                                                                                                                                                                                                                                                v       \ǯ�     �                "    reducer: state => state.local,5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       \ǯ�    �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       \ǯ�    �         	      !    storage: window.localStorage,5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                v       \ǯ�    �         	          key: 'options',5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        ]���     �         	      "    reducer: state => state.local,5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        ]���     �         
          reducer: state => {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        ]���     �         
          },5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        ]���     �                     �         
    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        ]���     �                     state.local, 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        ]���     �                     local: state.local, 5�_�                       )    ����                                                                                                                                                                                                                                                                                                                                                 v        ]���   	 �      	         *      local: state.local, auth: state.auth5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        ]��B    �                  *import VuexPersistence from 'vuex-persist'       export default ({ store }) => {     return new VuexPersistence({       key: 'persist',       reducer: state => ({         local: state.local,         auth: state.auth       }),        storage: window.localStorage     }).plugin(store)   }5�_�                          ����                                                                                                                                                                                                                                                                                                                                                 v        ]�'2     �         	      "    reducer: state => state.local,�         	    5�_�                           ����                                                                                                                                                                                                                                                                                                                                         /       v        ]�'4     �         	      1    reducer: state => {products: state.products},5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                         /       v        ]�'5     �         	      .    reducer: state => {local: state.products},5�_�                        (    ����                                                                                                                                                                                                                                                                                                                                         /       v        ]�'6    �      	   	      +    reducer: state => {local: state.local},5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                         /       v        ]�'>     �                   reducer: state => {5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                         /       v        ]�'?    �      	             },5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                             ^b��     �             5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                             ^b��     �                �             5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                             ^b��     �                 �             5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                             ^b��     �                 p5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                             ^b��     �                 �             5�_�   &               '          ����                                                                                                                                                                                                                                                                                                                                                             ^b��    �            	   window.onNuxtReady(() => {     return new VuexPersistence({       key: 'persist',       reducer: state => ({         local: state.local       }),        storage: window.localStorage     }).plugin(store)     });5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ]�&�   
 �              5�_�      
          	           ����                                                                                                                                                                                                                                                                                                                                                v       \ǯS     �              5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                v       \ǯS     �                   �         	          modules: 'local'5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                v       \ǯ\     �              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       \ǯ]     �             �                   modules: 'local'5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       \ǯ^    �         	          modules: 'local',5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       \ǯ_    �         	           storage: window.localStorage5��