Vim�UnDo� �v㲃i��V���!�v4SK�Ϛ,�&Z�:�I�      0import {Clabe} from 'src/clabe/clabe.interface';                              _x0    _�                            ����                                                                                                                                                                                                                                                                                                                                                             _x.�     �                 export class ClabeService {}5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _x.�     �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _x/F     �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _x/G     �             �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _x/G    �                 export class ClabeService {       }5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _x/M     �                 export class ClabeService {}5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _x/N     �                 �             5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             _x/V     �                 validate() {5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             _x/r     �                 validate() {5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             _x/|     �                 validate(input: string) {5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             _x/�     �                 validate(value: string) {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _x/�    �               "  validate(value: string): Clabe {     }5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                             _x/�     �               #  validate(value: string): Clabe {}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _x/�     �                   �             5�_�                            ����                                                                                                                                                                                                                                                                                                                               
          
       V   
    _x/�     �             �             �                    return 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V   
    _x/�    �              �             5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                 V   
    _x/�    �               .    const clabeCheck: Clabe = validate(clabe);5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                 V   
    _x/�     �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V   
    _x/�    �               5   * @param clabe - The string to validate as a CLABE5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       _x0      �                interface Clabe {     ok: boolean;     error: string | null;     formatOk: boolean;     message: string;     tag: string | null;     bank: string | null;     city: string | null;     account: string | null;   	  code: {       bank: string;       city: string;     };     checksum: number;   }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       _x0    �                    �                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       _x0     �             5�_�                             ����                                                                                                                                                                                                                                                                                                                                                 V       _x0    �               0import {Clabe} from 'src/clabe/clabe.interface';5��