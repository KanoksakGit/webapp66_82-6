function check_script(str){
    if (str.length < 6){
        return str;
    }else{
        let result_str = str;
        if(str.substring(1,9)=='abacddbec'){
            result_str = str.substring(4,7)+str.substring(9,str.length);
        }
        return result_str
    }
}
console.log(check_script("abacddbec"));