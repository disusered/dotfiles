Vim�UnDo� �Jj��n�F�����j��G�J*,��,s����   5   -import { Role } from 'src/roles/role.entity';            E       E   E   E    ^���    _�                             ����                                                                                                                                                                                                                                                                                                                                                             ^��\     �                  �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^��]    �                1import { Factory, Seeder } from 'typeorm-seeding'   $import { Connection } from 'typeorm'   "import { User } from '../entities'       4export default class CreateUsers implements Seeder {   L  public async run(factory: Factory, connection: Connection): Promise<any> {       await connection         .createQueryBuilder()         .insert()         .into(User)   g      .values([{ firstName: 'Timber', lastName: 'Saw' }, { firstName: 'Phantom', lastName: 'Lancer' }])         .execute()5�_�      :                      ����                                                                                                                                                                                                                                                                                                                                                             ^��a     �   	                   .into(User)�                4export default class CreateUsers implements Seeder {�                #import { User } from '../entities';�                2import { Factory, Seeder } from 'typeorm-seeding';5�_�      ;          :           ����                                                                                                                                                                                                                                                                                                                                                V       ^���     �      4       �             �                1        { firstName: 'Timber', lastName: 'Saw' },   5        { firstName: 'Phantom', lastName: 'Lancer' },5�_�   :   <           ;          ����                                                                                                                                                                                                                                                                                                                                       3          V       ^���    �      4   7   '     role: 'create-any-entity',   '  description: 'Can create any entity',   
        },         {    role: 'create-own-entity',   & description: 'Can create own entity',     },       {     role: 'read-any-entity',   %  description: 'Can read any entity',   },         {     role: 'read-own-entity',   %  description: 'Can read own entity',     },       {     role: 'update-any-entity',   '  description: 'Can update any entity',   },         {     role: 'update-own-entity',   '  description: 'Can update own entity',     },       /** Delete */   {     role = 'delete-any-entity',   (  description = 'Can delete any entity',   },         {     role: 'delete-own-entity',   '  description: 'Can delete own entity',     }5�_�   ;   =           <          ����                                                                                                                                                                                                                                                                                                                                                 V       ^���   	 �                #import { Role } from '../entities';5�_�   <   >           =           ����                                                                                                                                                                                                                                                                                                                                                 V       ^���     �         6    5�_�   =   ?           >           ����                                                                                                                                                                                                                                                                                                                                                 V       ^���   
 �         7      +import {Role} from 'src/roles/role.entity';5�_�   >   @           ?   ,       ����                                                                                                                                                                                                                                                                                                                                                 V       ^���     �   +   -   7      %          role = 'delete-any-entity',5�_�   ?   A           @   *       ����                                                                                                                                                                                                                                                                                                                                                 V       ^���     �   )   *                  /** Delete */5�_�   @   B           A   )        ����                                                                                                                                                                                                                                                                                                                                                 V       ^���     �   (   )           5�_�   A   C           B   +       ����                                                                                                                                                                                                                                                                                                                            +          +          v       ^���    �   *   ,   5      0          description = 'Can delete any entity',5�_�   B   D           C          ����                                                                                                                                                                                                                                                                                                                            +          +          v       ^��?    �         5      -import { Role } from 'src/roles/role.entity';5�_�   C   E           D          ����                                                                                                                                                                                                                                                                                                                                                v       ^���     �         5      /import { Role } from '../../roles/role.entity';5�_�   D               E          ����                                                                                                                                                                                                                                                                                                                                                v       ^���    �         5      ,import { Role } from 'sr/roles/role.entity';5�_�             :             ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �              �             �            :   define(Role, () => {     const role = new Role();   "  role.role = 'create-any-entity';   -  role.description = 'Can create any entity';     return role;   });       define(Role, () => {     const role = new Role();   "  role.role = 'create-own-entity';   -  role.description = 'Can create own entity';     return role;   });       /** Ready */   define(Role, () => {     const role = new Role();      role.role = 'read-any-entity';   +  role.description = 'Can read any entity';     return role;   });       define(Role, () => {     const role = new Role();      role.role = 'read-own-entity';   +  role.description = 'Can read own entity';     return role;   });       /** Update */   define(Role, () => {     const role = new Role();   "  role.role = 'update-any-entity';   -  role.description = 'Can update any entity';     return role;   });       define(Role, () => {     const role = new Role();   "  role.role = 'update-own-entity';   -  role.description = 'Can update own entity';     return role;   });       /** Delete */   define(Role, () => {     const role = new Role();   "  role.role = 'delete-any-entity';   -  role.description = 'Can delete any entity';     return role;   });       define(Role, () => {     const role = new Role();   "  role.role = 'delete-own-entity';   -  role.description = 'Can delete own entity';     return role;   });5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �              5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �              5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �         E              �         F      	        {5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �         F        �         G      	        }5�_�   
                    "    ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �         G      "  role.role = 'create-any-entity',5�_�                       -    ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �         G      -  role.description = 'Can create any entity',5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �         G      
        },5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �              �              �              �              �         C        �         D        {�         D        �         E        }�         E      "  role.role = 'create-own-entity',�         E      -  role.description = 'Can create own entity',5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �         E        },5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �              �              �              �              �         A        �         B      {�         B        �         C      }�         C         role.role = 'read-any-entity',�         C      +  role.description = 'Can read any entity',5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �         B      },5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �              �               �              �              �         >        �         ?        {�         ?        �         @        }�         @         role.role = 'read-own-entity',�         @      +  role.description = 'Can read own entity',5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �         @        },5�_�                    !        ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �       "        �   $   &        �   #   %        �       "        �       !   <        �       "   =      {�   #   $   =        �   #   %   >      }�   !   #   >      "  role.role = 'update-any-entity',�   "   $   >      -  role.description = 'Can update any entity',5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �      !        5�_�                    %        ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �   $   &        �   (   *        �   '   )        �   $   &        �   $   %   9        �   $   &   :        {�   '   (   :        �   '   )   ;        }�   %   '   ;      "  role.role = 'update-own-entity',�   &   (   ;      -  role.description = 'Can update own entity',5�_�                    (       ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �   '   )   ;        },5�_�                    +        ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �   *   ,        �   .   0        �   -   /        �   *   ,        �   *   +   7        �   *   ,   8      {�   -   .   8        �   -   /   9      }�   +   -   9      "  role.role = 'delete-any-entity',�   ,   .   9      -  role.description = 'Can delete any entity',5�_�                    .       ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �   -   /   9      },5�_�                    0        ����                                                                                                                                                                                                                                                                                                                                                  v        ^���     �   /   1        �   3   5        �   2   4        �   /   1        �   /   0   5        �   /   1   6        {�   2   3   6        �   2   4   7        }�   0   2   7      "  role.role = 'delete-own-entity',�   1   3   7      -  role.description = 'Can delete own entity',5�_�                    5       ����                                                                                                                                                                                                                                                                                                                                                  v        ^��     �   4   6        5�_�                    4       ����                                                                                                                                                                                                                                                                                                                                                  v        ^��     �   3   5        5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  v        ^��
     �         5      !  role.role: 'create-any-entity',5�_�      !                     ����                                                                                                                                                                                                                                                                                                                                                  v        ^��     �         5      ,  role.description: 'Can create any entity',5�_�      "           !          ����                                                                                                                                                                                                                                                                                                                                                  v        ^��      �         5      !  role.role: 'create-own-entity',5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                  v        ^��%     �         5      ,  role.description: 'Can create own entity',5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                  v        ^��*     �         5        role.role: 'read-any-entity',�         5      *  role.description: 'Can read any entity',5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                  v        ^��-     �         5        role.role: 'read-own-entity',�         5      *  role.description: 'Can read own entity',5�_�   $   &           %   !       ����                                                                                                                                                                                                                                                                                                                                                  v        ^��/     �       "   5      !  role.role: 'update-any-entity',�   !   #   5      ,  role.description: 'Can update any entity',5�_�   %   '           &   &       ����                                                                                                                                                                                                                                                                                                                                                  v        ^��0     �   %   '   5      !  role.role: 'update-own-entity',�   &   (   5      ,  role.description: 'Can update own entity',5�_�   &   (           '   1       ����                                                                                                                                                                                                                                                                                                                                                  v        ^��3    �   0   2   5      !  role.role: 'delete-own-entity',�   1   3   5      ,  role.description: 'Can delete own entity',5�_�   '   )           (   4        ����                                                                                                                                                                                                                                                                                                                                                  v        ^��;    �   3   5        5�_�   (   *           )   4        ����                                                                                                                                                                                                                                                                                                                                                       ^��=     �   4   5        �   4   5            }5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                       ^��R     �         5        role: 'create-any-entity',   '  description: 'Can create any entity',5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                                       ^��U     �         5       .role: 'create-own-entity',   ' .description: 'Can create own entity',5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                       ^��X     �         5       role: 'create-own-entity',   & description: 'Can create own entity',5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                                                       ^��^     �         5        role: 'read-any-entity',   %  description: 'Can read any entity',5�_�   -   /           .          ����                                                                                                                                                                                                                                                                                                                            !          "                 ^��b     �         5        role: 'read-own-entity',   %  description: 'Can read own entity',5�_�   .   0           /   !       ����                                                                                                                                                                                                                                                                                                                            &          '                 ^��e     �       #   5        role: 'update-any-entity',   '  description: 'Can update any entity',5�_�   /   1           0   &       ����                                                                                                                                                                                                                                                                                                                            1          2                 ^��j     �   %   (   5        role: 'update-own-entity',   '  description: 'Can update own entity',5�_�   0   2           1   1       ����                                                                                                                                                                                                                                                                                                                            1          2                 ^��o     �   0   3   5        role: 'delete-own-entity',   '  description: 'Can delete own entity',5�_�   1   3           2   #       ����                                                                                                                                                                                                                                                                                                                            ,          -                 ^��s    �   "   $   5      },5�_�   2   4           3   ,       ����                                                                                                                                                                                                                                                                                                                                                v       ^��}     �   +   .   5        role = 'delete-any-entity',   (  description = 'Can delete any entity',5�_�   3   5           4   5       ����                                                                                                                                                                                                                                                                                                                                                v       ^���     �   4   6            })5�_�   4   6           5   4        ����                                                                                                                                                                                                                                                                                                                                                v       ^���     �   3   5        5�_�   5   7           6   4       ����                                                                                                                                                                                                                                                                                                                                                v       ^���     �   4   5            �   4   6          }5�_�   6   8           7   5        ����                                                                                                                                                                                                                                                                                                                                                v       ^���     �   5   6           �   5   7          }5�_�   7   9           8   6        ����                                                                                                                                                                                                                                                                                                                                                v       ^���     �   5   7        5�_�   8               9   5        ����                                                                                                                                                                                                                                                                                                                                      3          V       ^���     �   5   6          }5�_�              !              ����                                                                                                                                                                                                                                                                                                                                                  v        ^��     �              �              �              �              �         1          �         2          {�         2        �         3        }�         3        },�         3       �         3        },,5��