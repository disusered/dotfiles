Vim�UnDo� jͼ:y�@��tFi'��f��"&a6"��w�Fh   �                 (       (   (   (    `u��    _�                            ����                                                                                                                                                                                                                                                                                                                                                             `u��     �         ~       �         }    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `u��     �                 �         ~    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `u��     �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `u��     �         �      3import { useTracking } from '../lib/with-tracking';   (import Alert from "../components/Alert";   &import Page from "../components/Page";   >import LanguageSwitcher from "../components/LanguageSwitcher";   .import Tailwind from "../components/Tailwind";   .import { getOrCreateI18n } from "../lib/i18n";       function Claim({ id = "" }) {     const router = useRouter();     const inputEl = useRef(null);   =  const language = useStore(state => state.options.language);   )  const i18n = getOrCreateI18n(language);   0  const [loading, setLoading] = useState(false);   )  const [input, setInput] = useState(id);   ,  const [error, setError] = useState(false);   M  const getAssertion = useAction(dispatch => dispatch.entities.getAssertion);        *        const { logEvent } = useTracking()5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             `u��    �                 5�_�      
          	          ����                                                                                                                                                                                                                                                                                                                                                             `u��     �      !   �          �      !       5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             `u��     �      %   �          logEvent()�       !   �    5�_�   
                 $       ����                                                                                                                                                                                                                                                                                                                                                             `u��     �       %   �      0                    category: 'ExampleCategory',   -                    action: 'Submitted Data',   *                    label: 'Special Label'                       })5�_�                    !       ����                                                                                                                                                                                                                                                                                                                                                             `u��     �       "   �      "      category: "ExampleCategory",5�_�                    "       ����                                                                                                                                                                                                                                                                                                                            !          !   "       v   "    `u��     �   !   #   �            action: "Submitted Data",5�_�                    !       ����                                                                                                                                                                                                                                                                                                                            !          !   "       v   "    `u�      �       "   �      %      category: "SubmittedClaimCode",5�_�                    !       ����                                                                                                                                                                                                                                                                                                                            !          !   "       v   "    `u�#     �       "   �            category: "Diploma",5�_�                    !       ����                                                                                                                                                                                                                                                                                                                            !          !   "       v   "    `u�&    �       "   �            category: "User Diploma",5�_�                    &       ����                                                                                                                                                                                                                                                                                                                            $                     V       `u�U     �   &   (   �    5�_�                    '        ����                                                                                                                                                                                                                                                                                                                            $                     V       `u�U     �   '   -   �    �   '   (   �    5�_�                    '        ����                                                                                                                                                                                                                                                                                                                            $                     V       `u�V     �   &   '           5�_�                    )       ����                                                                                                                                                                                                                                                                                                                            $                     V       `u�\     �   (   *   �      %      action: "Submitted Claim Code",5�_�                    )       ����                                                                                                                                                                                                                                                                                                                            $                     V       `u�]     �   (   *   �            action: " Claim Code",5�_�                    )       ����                                                                                                                                                                                                                                                                                                                            $                     V       `u�^     �   (   *   �            action: "Claim Code",5�_�                    )       ����                                                                                                                                                                                                                                                                                                                            $                     V       `u�_     �   (   *   �             action: "User Claim Code",5�_�                    *       ����                                                                                                                                                                                                                                                                                                                            $                     V       `u�c     �   &   ,   �          logEvent({         category: "Diploma",   "      action: "User Claimed Code",         label: "Special Label"       });5�_�                    *       ����                                                                                                                                                                                                                                                                                                                            $                     V       `u��     �   )   +   �              label: "Special Label"5�_�                    )       ����                                                                                                                                                                                                                                                                                                                            $                     V       `u��     �   (   *   �      $        action: "User Claimed Code",5�_�                    )   +    ����                                                                                                                                                                                                                                                                                                                            $                     V       `u��     �   (   *   �      1        action: "User claimed an unclaimed Code",5�_�                    *       ����                                                                                                                                                                                                                                                                                                                            $                     V       `u��     �   )   +   �      *        label: "Code has not been claimed"5�_�                    )       ����                                                                                                                                                                                                                                                                                                                            $                     V       `u��     �   (   *   �      1        action: "User claimed an unclaimed code",5�_�                    )       ����                                                                                                                                                                                                                                                                                                                            $                     V       `u��     �   (   *   �      -        action: " claimed an unclaimed code",5�_�                     )       ����                                                                                                                                                                                                                                                                                                                            $                     V       `u��     �   (   *   �      ,        action: "claimed an unclaimed code",5�_�      !               .       ����                                                                                                                                                                                                                                                                                                                            +          '          V       `u��     �   .   0   �    5�_�       "           !   /        ����                                                                                                                                                                                                                                                                                                                            +          '          V       `u��     �   /   5   �    �   /   0   �    5�_�   !   #           "   /        ����                                                                                                                                                                                                                                                                                                                            +          '          V       `u��     �   .   /           5�_�   "   $           #   /       ����                                                                                                                                                                                                                                                                                                                            +          '          V       `u��     �   .   4   �            logEvent({           category: "Diploma",   ,        action: "Claimed an unclaimed code",           label: "Unclaimed"   	      });5�_�   #   &           $   1       ����                                                                                                                                                                                                                                                                                                                            +          '          V       `u��     �   0   2   �      .          action: "Claimed an unclaimed code",5�_�   $   '   %       &   1       ����                                                                                                                                                                                                                                                                                                                            +          '          V       `u��    �   0   2   �      7          action: "Claimed an previously claimed code",5�_�   &   (           '   2       ����                                                                                                                                                                                                                                                                                                                            +          '          V       `u��    �   1   3   �                label: "Unclaimed"5�_�   '               (           ����                                                                                                                                                                                                                                                                                                                            $                     V       `u��    �                     logEvent({         category: "Diploma",   %      action: "Submitted Claim Code",         label: "Special Label"       });5�_�   $           &   %   1       ����                                                                                                                                                                                                                                                                                                                            +          '          V       `u��     �   0   2   �      0          action: " an previously claimed code",5�_�            	      !       ����                                                                                                                                                                                                                                                                                                                                                             `u��     �       !          5�_�                     !        ����                                                                                                                                                                                                                                                                                                                                                             `u��     �   !   "   �    �   !   "   �       5�_�                    !       ����                                                                                                                                                                                                                                                                                                                                                             `u��     �       !          5��