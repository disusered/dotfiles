Vim�UnDo� �P�頦�t	�j_�8+��`��9ȣ+/�W      *    const userColumn = new TableColumn({})      (                       ^���   	 _�                             ����                                                                                                                                                                                                                                                                                                                                                             ^��     �                     �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^�    �       
         8import {MigrationInterface, QueryRunner} from "typeorm";       Hexport class useForeignKeys1585647069467 implements MigrationInterface {       =    public async up(queryRunner: QueryRunner): Promise<any> {   /      // TODO: drop user_id and role_id columns         // TOOD: add foreign keys       }       ?    public async down(queryRunner: QueryRunner): Promise<any> {       }    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^�    �         
          // TOOD: add foreign keys5�_�                    	   =    ����                                                                                                                                                                                                                                                                                                                                                             ^�     �         
      >  public async down(queryRunner: QueryRunner): Promise<any> {}5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             ^�     �   	                �   	          5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^�3     �   
                  // TODO: remove foreign keys5�_�      	              
       ����                                                                                                                                                                                                                                                                                                                                                             ^�3    �   	          �   
          5�_�      
          	          ����                                                                                                                                                                                                                                                                                                                                                             ^���     �                   // �             5�_�   	              
      "    ����                                                                                                                                                                                                                                                                                                                                                             ^��     �               "    await queryRunner.dropColumns(5�_�   
                    /    ����                                                                                                                                                                                                                                                                                                                                                             ^��     �               /    await queryRunner.dropColumns('user_roles',5�_�                       :    ����                                                                                                                                                                                                                                                                                                                                                             ^��     �               ;    await queryRunner.dropColumns('user_roles', ['user_id']5�_�                       ;    ����                                                                                                                                                                                                                                                                                                                                                             ^��    �               <    await queryRunner.dropColumns('user_roles', ['user_id',]5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                                             ^��H     �                   // �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^��I     �                    // c5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^��I     �                   �             5�_�                       
    ����                                                                                                                                                                                                                                                                                                                               
                 v       ^��K     �                   const name = 5�_�                       $    ����                                                                                                                                                                                                                                                                                                                               
                 v       ^��V     �               %    const userCol = new TableColumn()5�_�                       %    ����                                                                                                                                                                                                                                                                                                                               
                 v       ^��W     �             �             5�_�                       
    ����                                                                                                                                                                                                                                                                                                                               
                 v       ^��Y     �               '    const userCol = new TableColumn({})5�_�                       1    ����                                                                                                                                                                                                                                                                                                                               
                 v       ^��\     �      	         F    await queryRunner.dropColumns('user_roles', ['user_id', 'role_id']5�_�                       9    ����                                                                                                                                                                                                                                                                                                                               
                 v       ^��^     �      	         :    await queryRunner.dropColumns('user_roles', [userCol,]5�_�                       A    ����                                                                                                                                                                                                                                                                                                                               A          C       v   C    ^��d     �      	         E    await queryRunner.dropColumns('user_roles', [userCol, roleColumn]5�_�                           ����                                                                                                                                                                                                                                                                                                                               A          C       v   C    ^��g     �      	         '    const userCol = new TableColumn({})   '    const roleCol = new TableColumn({})   B    await queryRunner.dropColumns('user_roles', [userCol, roleCol]5�_�                           ����                                                                                                                                                                                                                                                                                                                               A          C       v   C    ^��i    �      	         '    const roleCol = new TableColumn({})   E    await queryRunner.dropColumns('user_roles', [userColumn, roleCol]5�_�                       (    ����                                                                                                                                                                                                                                                                                                                               A          C       v   C    ^��u     �               *    const roleColumn = new TableColumn({})5�_�                       (    ����                                                                                                                                                                                                                                                                                                                               (          8       v   8    ^��~     �               *    const userColumn = new TableColumn({})�             5�_�                       :    ����                                                                                                                                                                                                                                                                                                                               (          8       v   8    ^��     �               <    const userColumn = new TableColumn({ name: 'role_id'  })5�_�                        0    ����                                                                                                                                                                                                                                                                                                                               3          0       v   0    ^���   	 �               :    const userColumn = new TableColumn({ name: 'role_id'})5�_�              	             ����                                                                                                                                                                                                                                                                                                                                                             ^���     �                   // �                   a5��