Vim�UnDo� ��Y ��{�O:(��b�����fH��,�O��D                    -       -   -   -    `�~    _�                             ����                                                                                                                                                                                                                                                                                                                                                             `�     �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `�     �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `�     �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `�     �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `�     �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `�     �             �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `�     �                 �             5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             `�     �                 �             5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                v       `�&     �                 if (expression) {�             5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                         $       v       `�(     �                   5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                v       `�/     �         !          if (expression) {�         !    5�_�                      $    ����                                                                                                                                                                                                                                                                                                                                         ,       v       `�9     �                %    return redirect('/settings/user')5�_�                           ����                                                                                                                                                                                                                                                                                                                                         ,       v       `�:     �              �              5�_�                           ����                                                                                                                                                                                                                                                                                                                                         ,       v       `�;     �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                         ,       v       `�B     �                !    // The user must be logged in5�_�                           ����                                                                                                                                                                                                                                                                                                                                         ,       v       `�C     �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                         ,       v       `�E     �                "    // The user must not have data5�_�                           ����                                                                                                                                                                                                                                                                                                                                         ,       v       `�F     �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                         ,       v       `�I     �                "    // The user must not have data5�_�                           ����                                                                                                                                                                                                                                                                                                                                         ,       v       `�K     �                    �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       `�P     �         "    �         "    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       `�Q     �                "    // The user must not have data5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       `�Q     �         "    �         "    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       `�S     �         #      "    // The user must not have data5�_�                           ����                                                                                                                                                                                                                                                                                                                                         *       v   *    `�W     �         #      +    $auth.user?.has_hospital_data === false5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       `�Y     �         #          if (expression) {�         #    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V   $    `�\     �         "    �         "    �                      5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                          $       V   $    `�_     �                .    return redirect('/settings/hospitals/new')5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       `�a     �         !    �         !    �                %    return redirect('/settings/user')5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       `�d     �   
             .export default function({ $auth, redirect }) {     if (   &    $auth.$state?.loggedIn === true &&   )    $auth.user?.has_fillup_data === false     ) {     }   }5�_�      !                       ����                                                                                                                                                                                                                                                                                                                            	                      V        `�f     �                .export default function({ $auth, redirect }) {     if (   !    // The user must be logged in   &    $auth.$state?.loggedIn === true &&            ) {     }   }5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                  V        `�g     �                 5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                  V        `�g     �                 5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                  V        `�h     �                 !    // The user must be logged in   (  if ($auth.$state?.loggedIn === true) {   "    // The user must not have data   0    if ($auth.user?.has_fillup_data === false) {   %    return redirect('/settings/user')       }   '    // The user must not have hospitals   2    if ($auth.user?.has_hospital_data === false) {   .    return redirect('/settings/hospitals/new')       }     }   }        5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                                 v        `�l     �               D/** Redirect to user settings if logged in and data is not filled */5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                 v        `�n     �                I/** Redirect to add hospital if logged in and hospital data is missing */5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                 v        `�n     �                H/**Redirect to add hospital if logged in and hospital data is missing */5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                 v        `�p     �               I  * Redirect to add hospital if logged in and hospital data is missing */   @Redirect to user settings if logged in and data is not filled */�               A Redirect to user settings if logged in and data is not filled */5�_�   '   )           (      F    ����                                                                                                                                                                                                                                                                                                                               K          I       v        `�r     �               �  * Redirect to add hospital if logged in and hospital data is missingRedirect to user settings if logged in and data is not filled */5�_�   (   *           )      D    ����                                                                                                                                                                                                                                                                                                                               K          I       v        `�t     �               D  * Redirect to user settings if logged in and data is not filled */5�_�   )   +           *      A    ����                                                                                                                                                                                                                                                                                                                               K          I       v        `�u     �               A  * Redirect to user settings if logged in and data is not filled5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                               K          I       v        `�w     �                 * �             5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                               K          I       v        `�z     �               F  * Redirect to add hospital if logged in and hospital data is missing   A  * Redirect to user settings if logged in and data is not filled     *     */5�_�   ,               -          ����                                                                                                                                                                                                                                                                                                                               K          I       v        `�}    �                 *5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                         ,       v       `�2     �         !      /    if ($auth.user?.has_fillup_data === true) {5��