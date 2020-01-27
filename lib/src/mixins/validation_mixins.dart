class ValidationMixins{

  String  validateEmail(String  value){
    
    if(value.contains('@')){
          return  null;
        }else{
          return  "email invalido";
        } 

  }

  String validatePassword(String  value){

    if(value.length < 6){
          return  "contraseña invalida";
        }else{
          return  null;
        }
  }



}