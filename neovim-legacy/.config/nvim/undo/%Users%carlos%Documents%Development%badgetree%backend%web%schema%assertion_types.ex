Vim�UnDo� ���T�Uhc��FeQH�輟�x,����          field :updated_at,             3       3   3   3    \2�]    _�                             ����                                                                                                                                                                                                                                                                                                                                                             \2��     �       
           �              5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             \2��    �          	      (defmodule BlogWeb.Schema.ContentTypes do5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             \2��    �         	        object :post do5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             \2��    �         	          field :id, :id5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             \2��     �         	          field :uuid, :id5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             \2��     �         
          �         	    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             \2��     �                    field :title, :string5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             \2��     �                    field :body, :string5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             \2��     �         	          �             5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                V       \2�     �             �             �                    field :name, 5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                 V       \2�     �                    field :uuid, :string5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                       
          V       \2�    �   
          �   
          5�_�                           ����                                                                                                                                                                                                                                                                                                                                      
          V       \2�~     �                    field :url, :string       field :image, :string       field :email, :string5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       \2�    �                    field :description, :string5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                V       \2��   	 �         	        object :issuer do5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                V       \2�U     �         	    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       \2�V     �             �             �                    field :name, :string       field :uuid, :string5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       \2�V     �                   �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       \2�]     �                   # basic field5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       \2�^     �                   �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       \2�c   
 �                   # �             5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                 V       \2�g     �                    field :json, :map5�_�                          ����                                                                                                                                                                                                                                                                                                                                                 V       \2�s     �               5    field :message, :string, default: "¡Sigue así!"5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       \2�u    �   
            /    field :is_deleted, :boolean, default: false5�_�                          ����                                                                                                                                                                                                                                                                                                                                                 V       \2�      �                   field :id, :id5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       \2�#    �                    field :uuid, :string5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       \2��    �                (defmodule Sphingi.Schema.ContentTypes do5�_�      !                       ����                                                                                                                                                                                                                                                                                                                                                             \2��     �                    # basic fields5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                             \2��     �                    # relational fields5�_�   !   $           "           ����                                                                                                                                                                                                                                                                                                                                                             \2��     �                
    # TODO5�_�   "   %   #       $           ����                                                                                                                                                                                                                                                                                                                                                             \2��     �             5�_�   $   &           %           ����                                                                                                                                                                                                                                                                                                                                                             \2��     �                �             5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                             \2��     �               field :author, :user5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                             \2��     �             5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                             \2��     �                 field :author, :user5�_�   (   *           )           ����                                                                                                                                                                                                                                                                                                                                                             \2��     �                 5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                             \2�     �                   field :author, :user5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                                             \2�    �                   field :issuer, :user5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                             \2�<     �                   �             5�_�   ,   .           -      
    ����                                                                                                                                                                                                                                                                                                                                                             \2�C     �                   field inserted_at, 5�_�   -   /           .      
    ����                                                                                                                                                                                                                                                                                                                                                             \2�D     �             �             5�_�   .   0           /          ����                                                                                                                                                                                                                                                                                                                                                             \2�E     �             5�_�   /   1           0          ����                                                                                                                                                                                                                                                                                                                                                v       \2�H     �                   field :inserted_at, 5�_�   0   2           1           ����                                                                                                                                                                                                                                                                                                                                                v       \2�K     �                 5�_�   1   3           2          ����                                                                                                                                                                                                                                                                                                                                                v       \2�[     �                   field :inserted_at, 5�_�   2               3          ����                                                                                                                                                                                                                                                                                                                                                v       \2�\    �                   field :updated_at, 5�_�   "           $   #           ����                                                                                                                                                                                                                                                                                                                                                             \2��     �             �                field :author, :user end5�_�                          ����                                                                                                                                                                                                                                                                                                                                                 V       \2�     �                   field :id, :uuid5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       \2�    �      	        5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                 V       \2�l     �   
           5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                       
          V       \2�U     �   	                ield :email, :string5��