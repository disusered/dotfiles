Vim�UnDo� M��Mw0	ޛ w�M��HGܭ��"M�SџQ                                     ^~��    _�                            ����                                                                                                                                                                                                                                                                                                                                                             ^~��     �                     �             5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             ^~��     �               !      queryRunner.createDatabase(5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                                             ^~�
     �               ,      queryRunner.createDatabase('cannabis',5�_�                    	   1    ����                                                                                                                                                                                                                                                                                                                                                             ^~�     �   	                  �   	          5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             ^~�     �   	                  queryRunner.dropDatabase(5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             ^~�     �   	                  queryRunner.dropDatabase(5�_�                    
   *    ����                                                                                                                                                                                                                                                                                                                                                             ^~�    �   	            *      queryRunner.dropDatabase('cannabis',5�_�      	              
   /    ����                                                                                                                                                                                                                                                                                                                                                             ^~�#    �                8import {MigrationInterface, QueryRunner} from "typeorm";       Gexport class setupDatabase1585360852981 implements MigrationInterface {       =    public async up(queryRunner: QueryRunner): Promise<any> {   2      queryRunner.createDatabase('cannabis', true)       }       ?    public async down(queryRunner: QueryRunner): Promise<any> {   0      queryRunner.dropDatabase('cannabis', true)       }    5�_�      
           	      /    ����                                                                                                                                                                                                                                                                                                                                                             ^~�'     �                   �             5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             ^~�2     �             5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             ^~�2     �      	       �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^~�3    �      	             �      	       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^~�:     �               1    queryRunner.createDatabase('cannabis', true);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^~�=    �               /    queryRunner.dropDatabase('cannabis', true);5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             ^~�f     �      	             �             5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             ^~��     �                "    await queryRunner.dropDatabase5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             ^~��    �                 5��