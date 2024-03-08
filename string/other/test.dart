void main(){
  String name = "sugitshshhskhh";

  List<int> res = [];
  Set<String> check = {};

  int last = find(name,name[0],check);
 
  for(int i=0; i<name.length; i++){
    int start = i;
    for(int j=i; j<=last; j++){
      if(name[last] != name[i] && !check.contains(name[i])){
        int f = find(name, name[i], check);
        if(last < f){
          last = f;
        }
      } 
    }
    i = last;
    res.add(last-start);
  }
  
  print(res);
}
 

int find(String word, String s, Set check){
    check.add(s);
    return word.lastIndexOf(s);
  }
