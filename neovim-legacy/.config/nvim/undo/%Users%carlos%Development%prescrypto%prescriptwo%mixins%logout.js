Vim�UnDo� P��8�I��_6keIv~	��g͕-�2=>�9*                    	       	   	   	    ^�9�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             ^�9     �       *       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^�9�     �         *          getPrxUrl() {5�_�                            ����                                                                                                                                                                                                                                                                                                                               	          	       V   	    ^�9�     �         )    �      	   )    �                      return PRX_URL5�_�                            ����                                                                                                                                                                                                                                                                                                                                      +          V       ^�9�    �                    getMedicToken() {   ?      const token = this.$auth.$storage.getState('token.local')   -      return token ? token.split(' ')[1] : ''       },       MEDIC_URL() {   (      const token = this.getMedicToken()   6      return `${PRX_URL}new/api_token/?token=${token}`       },       DEACTIVE_PRX2_URL() {   :      return `${this.MEDIC_URL()}&redirect_url=/beta/out/`       },       RX_URL(id) {   C      return `${this.MEDIC_URL()}&redirect_url=/prescription/${id}`       },       RXLIST_URL() {   ?      return `${this.MEDIC_URL()}&redirect_url=/prescriptions/`       },       RXSEARCH_URL(search) {   ,      const query = qs.stringify({ search })   H      return `${this.MEDIC_URL()}&redirect_url=/prescriptions/?${query}`       },       RXPRINT_URL() {   7      return `${this.MEDIC_URL()}&redirect_url=/print/`       },       SETTINGS_URL() {   8      return `${this.MEDIC_URL()}&redirect_url=/verify/`       },       CONTACT_URL() {   !      return `${PRX_URL}contact/`       }5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ^�9�     �                   logout() {5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                V       ^�9�    �                     },     }   }    5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                V       ^�9�     �                $const PRX_URL = process.env.BASE_URL5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                V       ^�9�     �                 5�_�                  	           ����                                                                                                                                                                                                                                                                                                                                                V       ^�9�    �                 5��