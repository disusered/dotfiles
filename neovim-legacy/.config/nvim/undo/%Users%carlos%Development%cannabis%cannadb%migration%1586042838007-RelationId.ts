Vim�UnDo� �/~of�Q(�p)�p{�����h��\�j����                                      ^�P    _�                              ����                                                                                                                                                                                                                                                                                                                                                             ^�O    �                8import {MigrationInterface, QueryRunner} from "typeorm";       Dexport class RelationId1586042838007 implements MigrationInterface {   $    name = 'RelationId1586042838007'       >    public async up(queryRunner: QueryRunner): Promise<void> {   [        await queryRunner.query(`ALTER TABLE "plant" DROP COLUMN "grower_uid"`, undefined);       }       @    public async down(queryRunner: QueryRunner): Promise<void> {   n        await queryRunner.query(`ALTER TABLE "plant" ADD "grower_uid" character varying NOT NULL`, undefined);       }    5��