Vim�UnDo� k෵ N�Tr�dȕ1��U��9*�L�
	a�ͅA      /import historySteps from './tour/history-steps'             $       $   $   $    `QH1    _�                            ����                                                                                                                                                                                                                                                                                                                                                             _��3     �      	   E        const steps = [5�_�                   D       ����                                                                                                                                                                                                                                                                                                                                                             _��7    �   C   E   E        inject('tour', { steps })5�_�                            ����                                                                                                                                                                                                                                                                                                                                      B          V       _�î     �             ;     const rx = [       /**   B      Welcome tab,  list tag: '[data-v-step="fav"]', list index: 0       **/       {   $      target: '[data-v-step="fav"]',   8      content: `Bienvenido a ${$config.whiteLabel}, <br>   F    <strong>Sigue este tutorial para hacer tu primera receta</strong>`       },       {   %      target: '[data-v-step="help"]',         content:   O        'Si necesita ayuda o tiene algún comentario, nos lo puede dejar aquí'       },       /**   C  // TODO add this step once can be show it without UI problems see   N  // https://github.com/Prescrypto/prescriptwo/pull/299#issuecomment-722585133     {   %    target: '[data-v-step="clinic"]',   H    content: 'Elige el centro de trabajo desde el cual emites la receta'     },     **/       {   (      target: '[data-v-step="patient"]',   y      content: `Crea o busca un paciente <strong>aquí</strong>☝!, al seleccionarlo o crearlo puedes editarlo también`       },       {   #      target: '[data-v-step="11"]',   3      content: 'Agrega un diagnóstico al paciente'       },       {   *      target: '[data-v-step="diagnosis"]',         content:   k        'Puedes elegir no mostrar el diagnóstico en la receta, para proteger la privacidad de su paciente'       },       {   #      target: '[data-v-step="12"]',   8      content: 'Las indicaciones extras son opcionales!'       },       {   #      target: '[data-v-step="13"]',   =      content: `Puedes buscar y seleccionar medicamentos de \   a              manera fácil aquí, al ser seleccionados puedes ver detalles de cada medicamento \   �              puedes indicar la cantidad de medicamentos a recetar, o dejar que el farmacéutico realice el cálculo con la posología`       },       {   $      target: '[data-v-step="fav"]',   L      content: `Aquí puedes ver los machotes de tus recetas favoritas, <br>   �    <strong>Tus recetas favoritas son machotes que llenas con un solo click! Para guardar una receta como favorita, primero la debes llenar y guardar, y después guardarla como favorito.</strong>`       },       {   #      target: '[data-v-step="14"]',   =      content: 'Puedes agregar más medicamentos desde aquí'       },       {   #      target: '[data-v-step="15"]',   F      content: 'Finaliza tu receta firmando y enviando la receta 👌'       }     ]5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       _�÷     �                �         
    5�_�                            ����                                                                                                                                                                                                                                                                                                                            	          	          V       _�þ    �      	         import rx from './tour/rx';       Vue.use(VueTour)       .export default function({ $config }, inject) {    5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                V       _���    �      
   
        inject('tour', { rx })5�_�      	              	       ����                                                                                                                                                                                                                                                                                                                                                V       _���     �      
   
      !  inject('tour', { rx($config) })5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                v       _���    �         
      import rx from './tour/rx'�         
    5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                v       _��     �         
      #import rxTourSteps from './tour/rx'5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                v       _��     �         
      )import rxTourSteps from './tour/rx-steps'5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                v       _��    �      
   
      %  inject('tour', { rx: rx($config) })5�_�                    	   &    ����                                                                                                                                                                                                                                                                                                                                                v       _��     �      
   
      *  inject('tour', { rx: rxSteps($config) })5�_�                    	   (    ����                                                                                                                                                                                                                                                                                                                                                v       _��-   
 �      
   
      ,  inject('tour', { rx: rxSteps($config.w) })5�_�                    	   2    ����                                                                                                                                                                                                                                                                                                                                                v       _��     �      
   
      5  inject('tour', { rx: rxSteps($config.whiteLabel) })5�_�                    	   3    ����                                                                                                                                                                                                                                                                                                                                                v       _��     �         
      6  inject('tour', { rx: rxSteps($config.whiteLabel), })5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                v       _��     �   	                �   	          5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                v       _��    �               3  inject('tour', { rx: rxSteps($config.whiteLabel),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _��    �   
                �   
          5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                v       _��;     �             �             5�_�                          ����                                                                                                                                                                                                                                                                                                                                                v       _��=     �               %import rxSteps from './tour/rx-steps'5�_�                       !    ����                                                                                                                                                                                                                                                                                                                               "          !       v   !    _��@    �               *import historySteps from './tour/rx-steps'5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _��D     �                   history: {}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _��H     �                   history: historySteps(5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                v       _��P     �   	              �   	          5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _��S     �               $    rx: rxSteps($config.whiteLabel),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _��T     �                   rx: rxSteps(),5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                v       _��U     �   	              const name = �   
          5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _��X    �               -    history: historySteps($config.whiteLabel)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       _��`    �                "    // TODO: Add steps for history5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                v       _��j    �                   history: historySteps(name)�             5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                             `QB�    �               %import rxSteps from './tour/rx-steps'�               /import historySteps from './tour/history-steps'5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                             `QD     �                  import Vue from 'vue'   import VueTour from 'vue-tour'   #import 'vue-tour/dist/vue-tour.css'   *import rxSteps from './tour-data/rx-steps'   4import historySteps from './tour-data/history-steps'       Vue.use(VueTour)       .export default function({ $config }, inject) {   !  const name = $config.whiteLabel     inject('tour', {       rx: rxSteps(name),       history: historySteps(name)     })   }5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                             `QH.     �               %import rxSteps from './tour/rx-steps'5�_�   #               $           ����                                                                                                                                                                                                                                                                                                                                                             `QH0    �               /import historySteps from './tour/history-steps'5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _��<     �               $importrxSteps from './tour/rx-steps'5�_�                    D       ����                                                                                                                                                                                                                                                                                                                                                             _��6     �   C   E   E        inject('tour', {steps })5��