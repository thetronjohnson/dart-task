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
  print("${a.name}");
  print("${a.role}");
  print("${a.stack}");
  print("---------\n");
  var b = Person("Red","Mentor","Web");
  b.setAvailableTime(50);
  var c = Person("Blue","Mentor","Web");
  c.setAvailableTime(60);
  var d = Person("Green","Mentor","Futter");
  d.setAvailableTime(100);
  var e = Person("Yellow","Mentor","Web");
  e.setAvailableTime(50);
  List <Person> list = [b,c,d,e];

  a.getMentors(list, "Web", 50);


}
