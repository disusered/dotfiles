Vim�UnDo� H���"y�P4"���sS4���v֌�����   m   N  return <authContext.Provider value={auth}>{children}</authContext.Provider>;      	      2       2   2   2    _A�E    _�                             ����                                                                                                                                                                                                                                                                                                                                                             _A��    �                   5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _A��     �                   �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _A��    �       k   k   j   Oimport React, { useState, useEffect, useContext, createContext } from "react";   *import * as firebase from "firebase/app";   import "firebase/auth";      !// Add your Firebase credentials   firebase.initializeApp({     apiKey: "",     authDomain: "",     projectId: "",     appID: ""   });      %const authContext = createContext();      D// Provider component that wraps your app and makes auth object ...   >// ... available to any child component that calls useAuth().   ,export function ProvideAuth({ children }) {   !  const auth = useProvideAuth();   O  return <authContext.Provider value={auth}>{children}</authContext.Provider>;   }      8// Hook for child components to get the auth object ...   &// ... and re-render when it changes.   export const useAuth = () => {   "  return useContext(authContext);   };      <// Provider hook that creates auth object and handles state   function useProvideAuth() {   *  const [user, setUser] = useState(null);        >  // Wrap any Firebase methods we want to use making sure ...   $  // ... to save the user to state.   (  const signin = (email, password) => {       return firebase         .auth()   3      .signInWithEmailAndPassword(email, password)         .then(response => {            setUser(response.user);           return response.user;   
      });     };      (  const signup = (email, password) => {       return firebase         .auth()   7      .createUserWithEmailAndPassword(email, password)         .then(response => {            setUser(response.user);           return response.user;   
      });     };        const signout = () => {       return firebase         .auth()         .signOut()         .then(() => {           setUser(false);   
      });     };      ,  const sendPasswordResetEmail = email => {       return firebase         .auth()   %      .sendPasswordResetEmail(email)         .then(() => {           return true;   
      });     };      5  const confirmPasswordReset = (code, password) => {       return firebase         .auth()   ,      .confirmPasswordReset(code, password)         .then(() => {           return true;   
      });     };         // Subscribe to user on mount   C  // Because this sets state in the callback it will cause any ...   E  // ... component that utilizes this hook to re-render with the ...     // ... latest auth object.     useEffect(() => {   E    const unsubscribe = firebase.auth().onAuthStateChanged(user => {         if (user) {           setUser(user);         } else {           setUser(false);         }       });      '    // Cleanup subscription on unmount        return () => unsubscribe();   
  }, []);        -  // Return the user object and auth methods     return {   
    user,       signin,       signup,       signout,       sendPasswordResetEmail,       confirmPasswordReset     };5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _A��     �          k    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _A��     �         l    �         l    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _A��     �                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _A��    �         l      Nimport React, { useState, useEffect, useContext, createContext } from "react";5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             _A��    �                 import * as React from "react";5�_�      
           	      "    ����                                                                                                                                                                                                                                                                                                                                                             _A�a    �         k      $const authContext = createContext();5�_�   	              
      )    ����                                                                                                                                                                                                                                                                                                                                                             _A�v    �         k      +export function ProvideAuth({ children }) {5�_�   
                    B    ����                                                                                                                                                                                                                                                                                                                                                             _A��     �         k      Dexport function ProvideAuth({ children }): React.PropsWithChildren {5�_�                       N    ����                                                                                                                                                                                                                                                                                                                                                             _A��    �         k      Qexport function ProvideAuth({ children }): React.PropsWithChildren<ProvideAuth> {5�_�                       #    ����                                                                                                                                                                                                                                                                                                                               #          #       V   #    _A��     �         k    �         k    �                C// Provider component that wraps your app and makes auth object ...   =// ... available to any child component that calls useAuth().5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V   #    _A��     �         o    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        _A��     �                  reverse: false,     auth: false,5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _A��     �         n      !const defaultProps: PageProps = {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _A��     �                $const defaultProps: ProvideProps = {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _A��     �                };5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       _A��     �         m       �         l    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _A��     �         m      interface ProvideAuth {5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       _A��     �         n      interface ProvideAuth {   }5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _A��    �         m      interface ProvideAuth { }5�_�                           ����                                                                                                                                                                                                                                                                                                                                         '       v   '    _A��     �         m      *}): React.PropsWithChildren<ProvideAuth> {5�_�                           ����                                                                                                                                                                                                                                                                                                                                         '       v   '    _A��     �         m      }) {�         m    5�_�                           ����                                                                                                                                                                                                                                                                                                                                         '       v   '    _A��     �         m      (}React.PropsWithChildren<ProvideAuth>) {5�_�                           ����                                                                                                                                                                                                                                                                                                                                         '       v   '    _A��   	 �         m      )}:React.PropsWithChildren<ProvideAuth>) {5�_�                            ����                                                                                                                                                                                                                                                                                                                                         '       v   '    _A��     �                 5�_�      1                     ����                                                                                                                                                                                                                                                                                                                                         '       v   '    _A��    �         l    5�_�      2   /       1      	    ����                                                                                                                                                                                                                                                                                                                               	          L       v   L    _A�D     �         m      N  return <authContext.Provider value={auth}>{children}</authContext.Provider>;�         m    5�_�   1               2      	    ����                                                                                                                                                                                                                                                                                                                               	          N       v   L    _A�D    �         m      P  return (<authContext.Provider value={auth}>{children}</authContext.Provider>);5�_�      0      1   /      	    ����                                                                                                                                                                                                                                                                                                                                                  V        _A�&     �         m      	  return    G  <authContext.Provider value={auth}>{children}</authContext.Provider>;5�_�   /               0      F    ����                                                                                                                                                                                                                                                                                                                                                  V        _A�'     �         n      F  <authContext.Provider value={auth}>{children}</authContext.Provider>     ;5�_�             /              ����                                                                                                                                                                                                                                                                                                                                                  V        _A�I     �              5�_�      !                       ����                                                                                                                                                                                                                                                                                                                                                  V        _A�J     �              5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                  V        _A�K     �              5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                  V        _A�g     �              5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                  V        _A�h     �              5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                  V        _A�l     �              5�_�   $   '           %           ����                                                                                                                                                                                                                                                                                                                            :          I   	       V       _A�m   
 �              5�_�   %   (   &       '   :        ����                                                                                                                                                                                                                                                                                                                            :          :   	       V       _A��     �   9   J        5�_�   '   )           (   :        ����                                                                                                                                                                                                                                                                                                                            :          :   	       V       _A��    �   9   ;        5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                            :          :   	       V       _A��     �          C      <import { useState, useContext, createContext } from "react";5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                            :          :   	       V       _A��     �          C      0import { useState, createContext } from "react";5�_�   *   .           +          ����                                                                                                                                                                                                                                                                                                                            :          :   	       V       _A��    �          C      !import { useState } from "react";5�_�   +       -       .          ����                                                                                                                                                                                                                                                                                                                            :          :   	       V       _A��    �   
      C      7  const signin = (email: string, password: string) => {5�_�   +       ,   .   -          ����                                                                                                                                                                                                                                                                                                                                         	       V       _A��     �      D        5�_�   +           -   ,          ����                                                                                                                                                                                                                                                                                                                                         	       V       _A��     �      D        5�_�   %           '   &           ����                                                                                                                                                                                                                                                                                                                                                  V        _A�n     �              5�_�                           ����                                                                                                                                                                                                                                                                                                                                         '       v   '    _A��     �         m       �         n      /**    * Component ¬]b    */5�_�                            ����                                                                                                                                                                                                                                                                                                                                         '       v   '    _A��     �         m       5��