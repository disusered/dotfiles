Vim�UnDo� 2x,yk�hԀ謪`i x������nwg�0]]G                                      ^�υ    _�                            ����                                                                                                                                                                                                                                                                                                                                                             ^��C     �              5�_�                            ����                                                                                                                                                                                                                                                                                                                            	                      V        ^��P     �             �             �                
  @Field()     @IsEmail()     email: string;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       ^��V     �               @export default class CreateUserDto implements Partial<UserDto> {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       ^��\     �      	       �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ^��e     �                3import { InputType, Field } from '@nestjs/graphql';5�_�                           ����                                                                                                                                                                                                                                                                                                                            
          
          V       ^��f     �                 @import { IsEmail, IsOptional, IsString } from 'class-validator';5�_�      	                      ����                                                                                                                                                                                                                                                                                                                            	                     V       ^��i     �                    
  @Field()     @IsString()5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                 V       ^��j     �                 5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                 V       ^��k     �                  @IsString()5�_�   
                 	        ����                                                                                                                                                                                                                                                                                                                            	                     V       ^��l     �      	                @Field({ nullable: true })     @IsString()     @IsOptional()5�_�                           ����                                                                                                                                                                                                                                                                                                                            	           	          V       ^��|     �                  password: string;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       ^��~     �      
           �      
   
    5�_�                    	        ����                                                                                                                                                                                                                                                                                                                            	          	          V       ^�ρ     �      
   
    �   	   
   
    �      	            cre5�_�                    	       ����                                                                                                                                                                                                                                                                                                                            	           	          V       ^�τ     �   	          �   	   
       5�_�                     
       ����                                                                                                                                                                                                                                                                                                                            	           	          V       ^�τ    �               5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             ^���     �                @import { IsEmail, IsOptional, IsString } from 'class-validator';   3import { InputType, Field } from '@nestjs/graphql';   )import UserDto from 'src/users/user.dto';       @InputType()   @export default class CreateUserDto implements Partial<UserDto> {   
  @Field()     @IsEmail()     email: string;       
  @Field()     @IsString()     name: string;         @IsString()     password: string;         @Field({ nullable: true })     @IsString()     @IsOptional()     location?: string;   }5��