Vim�UnDo� ��-�Ӳ��!Q�.���B��㡹�X�   &                                  `��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             `� �    �               #       *source "googlecompute" "autogenerated_1" {     image_family        = "unemi"     image_name          = "sga"   %  project_id          = "unemi-cloud"   �  scopes              = ["https://www.googleapis.com/auth/userinfo.email", "https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/devstorage.full_control"]   "  source_image_family = "centos-7"      ssh_username        = "packer"     subnetwork          = "sga"   $  zone                = "us-east1-b"   }       build {   4  sources = ["source.googlecompute.autogenerated_1"]         provisioner "file" {   )    destination = "/tmp/requirements.txt"   $    source      = "requirements.txt"     }         provisioner "file" {   $    destination = "/tmp/settings.py"       source      = "settings.py"     }         provisioner "file" {   #    destination = "/tmp/python.tgz"   $    source      = "Python-3.5.2.tgz"     }         provisioner "shell" {       script = "provision.sh"     }       }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `� �    �          #          *source "googlecompute" "autogenerated_1" {�         #      *source "googlecompute" "autogenerated_1" {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `�O    �         "      %  project_id          = "unemi-cloud"5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             `�m     �          "      *source "googlecompute" "autogenerated_1" {5�_�                           ����                                                                                                                                                                                                                                                                                                                                         1       v   1    `�t    �         "      4  sources = ["source.googlecompute.autogenerated_1"]�         "    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v   1    `��     �         "        }5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v   1    `��   
 �         "          }5�_�                          ����                                                                                                                                                                                                                                                                                                                                                v   1    `��     �                �  scopes              = ["https://www.googleapis.com/auth/userinfo.email", "https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/devstorage.full_control"]5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v   1    `��     �      
   !    �      	   !    5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                v   1    `��     �         "      �  scopes              = ["https://www.googleapis.com/auth/userinfo.email", "https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/devstorage.full_control"]5�_�                    
   3    ����                                                                                                                                                                                                                                                                                                                                                v   1    `��     �   	      #      �  "https://www.googleapis.com/auth/userinfo.email", "https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/devstorage.full_control"]5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                v   1    `��     �   
      $      i    "https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/devstorage.full_control"]5�_�                       =    ����                                                                                                                                                                                                                                                                                                                                                v   1    `��     �         %      >    "https://www.googleapis.com/auth/devstorage.full_control"]5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v   1    `��    �         &        scopes              = [   3  "https://www.googleapis.com/auth/userinfo.email",5�_�                          ����                                                                                                                                                                                                                                                                                                                                                v   1    `�     �         &        subnetwork          = "sga"5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v   1    `�    �         &      ,  project_id          = "sga-instance-group"5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v   1    `�p     �               &   $source "googlecompute" "sga_image" {     image_family        = "unemi"     image_name          = "sga"   %  project_id          = "unemi-cloud"   "  source_image_family = "centos-7"      ssh_username        = "packer"   !  subnetwork          = "default"   $  zone                = "us-east1-b"     scopes = [   5    "https://www.googleapis.com/auth/userinfo.email",   .    "https://www.googleapis.com/auth/compute",   =    "https://www.googleapis.com/auth/devstorage.full_control"     ]   }       build {     sources = ["sga_image"]         provisioner "file" {   )    destination = "/tmp/requirements.txt"   $    source      = "requirements.txt"     }         provisioner "file" {   $    destination = "/tmp/settings.py"       source      = "settings.py"     }         provisioner "file" {   #    destination = "/tmp/python.tgz"   $    source      = "Python-3.5.2.tgz"     }         provisioner "shell" {       script = "provision.sh"     }       }5�_�                             ����                                                                                                                                                                                                                                                                                                                                                v   1    `��    �               &   $source "googlecompute" "sga_image" {     image_family        = "unemi"     image_name          = "sga"   %  project_id          = "unemi-cloud"   "  source_image_family = "centos-7"      ssh_username        = "packer"   !  subnetwork          = "default"   $  zone                = "us-east1-b"     scopes = [   5    "https://www.googleapis.com/auth/userinfo.email",   .    "https://www.googleapis.com/auth/compute",   =    "https://www.googleapis.com/auth/devstorage.full_control"     ]   }       build {     sources = ["sga_image"]         provisioner "file" {   )    destination = "/tmp/requirements.txt"   $    source      = "requirements.txt"     }         provisioner "file" {   $    destination = "/tmp/settings.py"       source      = "settings.py"     }         provisioner "file" {   #    destination = "/tmp/python.tgz"   $    source      = "Python-3.5.2.tgz"     }         provisioner "shell" {       script = "provision.sh"     }       }5�_�                       #    ����                                                                                                                                                                                                                                                                                                                                                v   1    `��    �         &      "    destination = "/tmp/python.tgz5�_�         	                ����                                                                                                                                                                                                                                                                                                                                                v   1    `��     �         "        scopes              = [   �  "https://www.googleapis.com/auth/userinfo.email", "https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/devstorage.full_control"]5�_�                       4    ����                                                                                                                                                                                                                                                                                                                                                v   1    `��     �         #      �  "https://www.googleapis.com/auth/userinfo.email","https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/devstorage.full_control"]5�_�                       3    ����                                                                                                                                                                                                                                                                                                                                                v   1    `��     �         #      3  "https://www.googleapis.com/auth/userinfo.email",   i    "https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/devstorage.full_control"]5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v   1    `��     �         $        image_family = "unemi"     image_name   = "sga"   %  project_id   = "sga-instance-group"     scopes = [   5    "https://www.googleapis.com/auth/userinfo.email",   g  "https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/devstorage.full_control"]5�_�      
          	          ����                                                                                                                                                                                                                                                                                                                                                v   1    `��     �         "        scopes              = [   �  "https://www.googleapis.com/auth/userinfo.email", "https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/devstorage.full_control"]5�_�   	               
          ����                                                                                                                                                                                                                                                                                                                                                v   1    `��     �         #        image_family = "unemi"     image_name   = "sga"   %  project_id   = "sga-instance-group"     scopes = [5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `�_    �          "      $source "googlecompute" "sgg.image" {5��