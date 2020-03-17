class Person{
  String name;
  String stack;
  String role;
  Person(this.name);

  void addStacks(stack){
      this.stack = stack;
  }

}

class Mentor extends Person{
  int time;
  Mentor(String name) : super(name);
  void setMentororLearner(){
    this.role = "Mentor";
  }
  void setAvailableTime(time){
    this.time = time;
  }
}

class Learner extends Person{
  Learner(String name) : super(name);
  void setMentororLearner(){
    this.role = "Learner";
  }

  void getMentor(stack,time){
    
  }
}

void main(){

  var m = Mentor("Red");
  var l = Learner("Ash");
  m.setAvailableTime(50);
  l.addStacks("Flutter");
  m.addStacks("Web");
  print("${m.time}");
  print("${l.stack}");

}