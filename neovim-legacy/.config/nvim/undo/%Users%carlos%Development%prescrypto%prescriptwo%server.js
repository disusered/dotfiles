Vim�UnDo� U?��gQ:Z�ސZ�z:�H�t�sh�<�J��	�   %   app.use(bodyParser)            !       !   !       _s    _�                             ����                                                                                                                                                                                                                                                                                                                                                             ^�d�     �         "       �         "    �         !    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�d�     �         "      $bodyParser = require('body-parser');5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^�d�     �                *const bodyParser = require('body-parser');5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^�d�     �         !    �         !    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�d�     �         "    �         "    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�d�     �         #    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^�d�     �         $      app.use(redirectSSL)5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             ^�d�     �         %       �         $    5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             ^�d�     �         %      // Parse JSON5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             ^�d�    �         %      *const bodyParser = require('body-parser');5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             ^�d�    �          %      app.use(bodyParser)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ^�e�     �                // Use custom routes   app.use('/api/v1', routes)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ^�e�     �         #           �         #       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ^�e�     �      !   "    5�_�                             ����                                                                                                                                                                                                                                                                                                                                                V       ^�e�    �       #   #    �       !   #    5�_�                    !        ����                                                                                                                                                                                                                                                                                                                            !          "          V       ^�f     �       !          // Use custom routes   app.use('/api/v1', routes)5�_�                    !        ����                                                                                                                                                                                                                                                                                                                            !          !          V       ^�f     �      !   #           �       "   #       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V       ^�f     �         "    5�_�                            ����                                                                                                                                                                                                                                                                                                                            !          !          V       ^�f    �          #    �         #    5�_�                            ����                                                                                                                                                                                                                                                                                                                            #          #          V       ^�f     �                )const bodyParser = require('body-parser')5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       ^�f    �              $   "const express = require('express')   const app = express()   +const redirectSSL = require('redirect-ssl')   )const { Nuxt, Builder } = require('nuxt')   "const routes = require('./routes')       T// NOTE to present and future devs: this is not really happening only in production.   4const isProd = process.env.NODE_ENV === 'production'       // Use declarative Nuxt config   *const config = require('./nuxt.config.js')       2// Create new Nuxt middleware based on environment   config.dev = !isProd   const nuxt = new Nuxt(config)       4// If production release, pre-build assets on launch   if (!isProd) {   #  const builder = new Builder(nuxt)     builder.build()   }       // Redirect to HTTPS   app.use(redirectSSL)       // Parse JSON requests   app.use(bodyParser.json())       // Use custom routes   app.use('/api/v1', routes)       // Use Nuxt middleware   app.use(nuxt.render)       $// Start Express server on port 3000   $app.listen(process.env.PORT || 3000)�   $            �   $            5�_�                          ����                                                                                                                                                                                                                                                                                                                                                V       ^�fQ     �                // Use custom routes   app.use('/api/v1', routes)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ^�fQ     �         #           �         #       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ^�fS     �         "    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ^�fS   
 �          #    �         #    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ^�fs    �         %      app.use(bodyParser)5�_�      !                     ����                                                                                                                                                                                                                                                                                                                                                  V        _s     �                 %// const express = require('express')�                // const app = express()5�_�                   !           ����                                                                                                                                                                                                                                                                                                                                                  V        _sX     �                .// const redirectSSL = require('redirect-ssl')�                ,// const bodyParser = require('body-parser')�                ,// const { Nuxt, Builder } = require('nuxt')5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        ^�h     �                // app.use(bodyParser.json())5�_�                             ����                                                                                                                                                                                                                                                                                                                                                  V        ^�h    �                ,// const bodyParser = require('body-parser')5�_�                          ����                                                                                                                                                                                                                                                                                                                                                V       ^�f*     �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ^�f+     �              5�_�                             ����                                                                                                                                                                                                                                                                                                                                                V       ^�f,    �              5��