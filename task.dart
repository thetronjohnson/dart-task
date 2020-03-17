class Person {
  String name;
  String stack;
  String role;
  int time;

  Person(this.name,this.role,this.stack);

  String addStacks(stack){
    this.stack = stack;
    return this.stack;
  }

  String setMentororLearner(role){
    if(role=="Learner"){
      this.role = role;
      return this.role;
    }
    else if(role=="Mentor"){
      this.role = role;
      return this.role;
    }
    this.role = "Undefined";
    return "Undefined";
  }
  int setAvailableTime(time){
    if(this.role=="Learner"){
      this.time = 0;
      return 0;
    }
    else if(this.role=="Mentor"){
      this.time = time;
      return this.time;
    }
    return 0;
  }

  void getMentors(list,stack,time){
    if(this.role=="Learner"){
      for(var i in list){
        if(i.stack==stack && i.time==time){
          print("${i.name}");
        }

      }
      
    }
  }

}

void main(){
  var a = Person("Ash","Learner","Web");
  var f = Person("Gary","Learner","Flutter");

  var b = Person("Red","Mentor","Web");
  b.setAvailableTime(50);
  
  var c = Person("Blue","Mentor","Web");
  c.setAvailableTime(60);
  
  var d = Person("Green","Mentor","Flutter");
  d.setAvailableTime(100);
  
  var e = Person("Yellow","Mentor","Web");
  e.setAvailableTime(50);
  
  List <Person> list = [a,b,c,d,e,f];

  print("${a.name}'s available mentors\n");
  a.getMentors(list, "Web", 50);
  print("---------\n");
  print("\n${f.name}'s available mentors\n");
  f.getMentors(list,"Flutter",100);

}
