Vim�UnDo� ��%�+���SY��Tv��9����Vɹ�u      3      `ALTER TABLE "plant" ADD COLUMN "phenotype"`,      1                       ^v    _�                            ����                                                                                                                                                                                                                                                                                                                                                             ^v�    �                     �             �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^v�     �                8import {MigrationInterface, QueryRunner} from "typeorm";       Iexport class PhenotypeColumn1584841185706 implements MigrationInterface {       =    public async up(queryRunner: QueryRunner): Promise<any> {   T      await queryRunner.query(`ALTER TABLE "post" RENAME COLUMN "title" TO "name"`);       }       ?    public async down(queryRunner: QueryRunner): Promise<any> {       }    5�_�                    
   =    ����                                                                                                                                                                                                                                                                                                                                                V       ^v�     �   	            >  public async down(queryRunner: QueryRunner): Promise<any> {}5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                V       ^v�     �   
          5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ^v�    �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ^v�     �   
                |        await queryRunner.query(`ALTER TABLE "post" RENAME COLUMN "name" TO "title"`); // reverts things made in "up" method5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ^v�    �               ,    ); // reverts things made in "up" method5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                V       ^v�     �               ;      `ALTER TABLE "post" RENAME COLUMN "title" TO "name"`,5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                V       ^v�5     �               <      `ALTER TABLE "plant" RENAME COLUMN "title" TO "name"`,5�_�   	              
      -    ����                                                                                                                                                                                                                                                                                                                               -          6       v   6    ^v�9     �               9      `ALTER TABLE "plant" ADD COLUMN "title" TO "name"`,5�_�   
                    '    ����                                                                                                                                                                                                                                                                                                                               -          6       v   6    ^v�:     �               /      `ALTER TABLE "plant" ADD COLUMN "title"`,5�_�                           ����                                                                                                                                                                                                                                                                                                                                         8       v   8    ^v�A     �               ;      `ALTER TABLE "post" RENAME COLUMN "name" TO "title"`,�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                         0       v   8    ^v�D    �               3      `ALTER TABLE "plant" ADD COLUMN "phenotype"`,5�_�                        1    ����                                                                                                                                                                                                                                                                                                                                         0       v   8    ^v    �               3      `ALTER TABLE "plant" ADD COLUMN "phenotype"`,5��