Vim�UnDo� ".Yg�0��^e���pl��P�?l[���V�"��   7                                  _A�U    _�                       	    ����                                                                                                                                                                                                                                                                                                                            	          	          V       _A��     �                4import { useApiRequest } from "hooks/useApiRequest";5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       _A��     �                '  const { register } = useApiRequest();5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       _A��     �                      await register(data);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       _A��    �         4       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       _A��     �         4            �         3    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       _A��     �         4            console.debug(5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       _A��    �         4            console.debug(data)5�_�                             ����                                                                                                                                                                                                                                                                                                                                                V       _A�T     �               4   #import Form from "components/Form";   %import Input from "components/Input";   import * as React from "react";       interface RegisterForm {}       const RegisterForm = () => {   4  /** Validates and attempts to log in to the API */   /  async function handleSubmit(data: FormData) {       const valid = true;       if (valid) {         console.debug(data);       }     }       
  return (   2    <Form label="Sign Up" onSubmit={handleSubmit}>   G      <Input required type="email" name="email" autoComplete="email" />   J      <Input required minLength={4} name="name" placeholder="Full Name" />         <Input           required           type="password"           name="password"   #        autoComplete="new_password"   L        onChange={function (event: React.SyntheticEvent<HTMLInputElement>) {   /          const { form } = event.currentTarget;             if (form) {   7            const elements = Array.from(form.elements);   *            // TODO: Fix typing of element   *            const element = elements.find(   7              (i: any) => i.name === "confirm_password"               );       6            if (element instanceof HTMLInputElement) {   :              element.pattern = event.currentTarget.value;               }             }   
        }}         />         <Input           required   #        autoComplete="new_password"           type="password"           name="confirm_password"            label="Confirm Password"   &        placeholder="Confirm Password"         />       </Form>     );   };       export default RegisterForm;5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                V       _A�     �      
          *  // const { register } = useApiRequest();5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _A�     �                      // await register(data);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        _A�    �                7// import { useApiRequest } from "hooks/useApiRequest";5�_�                            ����                                                                                                                                                                                                                                                                                                                            	          	          V       _A�    �                4import { useApiRequest } from "hooks/useApiRequest";5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                V       _A�    �      
          '  const { register } = useApiRequest();5�_�      	                    ����                                                                                                                                                                                                                                                                                                                            	          	          V       _A�3    �                      await register(data);5�_�                	          ����                                                                                                                                                                                                                                                                                                                                                v       _A��     �         7          �         8          React.Suspense5�_�   	      
                 ����                                                                                                                                                                                                                                                                                                                                                v       _A��     �         8    �         8          React.Suspense5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _A��     �         8    �         8          <React.Suspense>5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _A��     �         8    �         8          <React.Suspense>5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _A��     �         9          </React.Suspense>5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _A��     �              5�_�                    4       ����                                                                                                                                                                                                                                                                                                                                                v       _A��     �   4   5   8    �   4   5   8          </React.Suspense>5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _A��     �         9      '    <React.Suspense fallback={'dooog'}>5�_�                        %    ����                                                                                                                                                                                                                                                                                                                                                v       _A��   
 �      5   9   !   '    <React.Suspense fallback={"dooog"}>   4      <Form label="Sign Up" onSubmit={handleSubmit}>   I        <Input required type="email" name="email" autoComplete="email" />   L        <Input required minLength={4} name="name" placeholder="Full Name" />           <Input             required             type="password"             name="password"   %          autoComplete="new_password"   N          onChange={function (event: React.SyntheticEvent<HTMLInputElement>) {   1            const { form } = event.currentTarget;               if (form) {   9              const elements = Array.from(form.elements);   ,              // TODO: Fix typing of element   ,              const element = elements.find(   9                (i: any) => i.name === "confirm_password"                 );       8              if (element instanceof HTMLInputElement) {   <                element.pattern = event.currentTarget.value;                 }               }             }}   
        />           <Input             required   %          autoComplete="new_password"             type="password"   !          name="confirm_password"   "          label="Confirm Password"   (          placeholder="Confirm Password"   
        />         </Form>5�_�   	             
          ����                                                                                                                                                                                                                                                                                                                            	          	          V       _A��     �         8      $    <React class="Suspense"></React>5�_�   
                         ����                                                                                                                                                                                                                                                                                                                            	          	          V       _A��     �         8          <React class="Suspense">       </React>5�_�              	      	       ����                                                                                                                                                                                                                                                                                                                            	          	          V       _A��    �      
          *  // const { register } = useApiRequest();5�_�                    	       ����                                                                                                                                                                                                                                                                                                                            	          	          V       _A�    �      
          *  // const { register } = useApiRequest();5��