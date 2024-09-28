import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class QuizzApp extends StatefulWidget{
  const QuizzApp({super.key});

  @override   
  State<QuizzApp> createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp>{


  List<Map> questionList = [
    {
      "question": "Who was the captian of the Indian Team in T20 WorldCup 2024?",
      "option":["Virat Kohli","Hardik Pandya","Rohit Sharma","Rishab Pant"  ],
      "answerIndex":2,
    },

    {
      "question": "Who was Indian top scorer in the final ?",
      "option":["Rohit Sharma","Axar Patel","SuryaKumar Yadhav","Virat Kohli"],
      "answerIndex":3,
    },

    {
      "question": "Which player announced his retirement from T20 after final?",
      "option":["Virat Kohli","Hardik Pandya","Jasprit Bumrah","Rishab Pant"],
      "answerIndex":0,
    },

    {
      "question": "Which South African player was dismissed by Hardik pandya in final over?",
      "option":["Heinrich Klaasen","David Miller","Quinton de kock","Marco Jansen"],
      "answerIndex":1,
    },

    {
      "question": "Who won the T20 World Cup Final?",
      "option":["India","South Africa","England","Australia"  ],
      "answerIndex":0,
    },
  ];

  int questionIndex=0;
  int selectedAnswerIndex=-1;
  int rightAnswer=0;

  checkAnswer(int buttonIndex){
    if(selectedAnswerIndex !=-1){
      if(buttonIndex==questionList[questionIndex]["answerIndex"]){
        return Colors.green;
      }else if (buttonIndex==selectedAnswerIndex){
        return Colors.red;
      }else{
        return const Color(0xff384358);
      }
    }else{
      return const Color(0xff384358);
    }
  }


  bool questionScreen=true;

  @override  
  Widget build(BuildContext context){
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen(){
    if(questionScreen==true){
      return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff384358),
        toolbarHeight: 70,
        title: Text(
          "Qizz App",
          style: GoogleFonts.dmSans(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: const Color.fromARGB(255, 255, 201, 4)
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40,),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Question: ${questionIndex+1}/${questionList.length}",
                  style:  GoogleFonts.dmSans(
                    fontSize: 28,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Container(
              height: 120,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff384358),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    questionList[questionIndex]["question"],
                    style: GoogleFonts.dmSans(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
        
            const SizedBox(height: 30,),
        
            GestureDetector(
              onTap: (){
               if(selectedAnswerIndex==-1){
                setState(() {
                  selectedAnswerIndex=0;
                });
               }
                
              },
              child: Container(
                height: 70,
                width: 360,
                decoration: BoxDecoration(
                  color: checkAnswer(0),
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10,),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xff384358),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2,color: const Color.fromARGB(255, 255, 255, 255))
                      ),
                      child: Center(
                        child: Text(
                          "A",
                          style:GoogleFonts.dmSans(
                            fontSize: 18,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    
                    const SizedBox(width: 10,),
                    Text(
                      questionList[questionIndex]["option"][0],
                      style: GoogleFonts.dmSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
            ),
        
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                if(selectedAnswerIndex==-1){
                setState(() {
                  selectedAnswerIndex=1;
                });
               }
              },
              child: Container(
                height: 70,
                width: 360,
                decoration: BoxDecoration(
                  color: checkAnswer(1),
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10,),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xff384358),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2,color: const Color.fromARGB(255, 255, 255, 255))
                      ),
                      child:Center(
                        child: Text(
                          "B",
                          style:GoogleFonts.dmSans(
                            fontSize: 18,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    
                    const SizedBox(width: 10,),
                    Text(
                      questionList[questionIndex]["option"][1],
                      style:GoogleFonts.dmSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
            ),
        
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                if(selectedAnswerIndex==-1){
                setState(() {
                  selectedAnswerIndex=2;
                });
               }
              },
              child: Container(
                height: 70,
                width: 360,
                decoration: BoxDecoration(
                  color: checkAnswer(2),
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10,),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xff384358),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2,color: const Color.fromARGB(255, 255, 255, 255))
                      ),
                      child: Center(
                        child: Text(
                          "C",
                          style:GoogleFonts.dmSans(
                            fontSize: 18,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    
                    const SizedBox(width: 10,),
                    Text(
                      questionList[questionIndex]["option"][2],
                      style:GoogleFonts.dmSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
            ),
        
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                if(selectedAnswerIndex==-1){
                setState(() {
                  selectedAnswerIndex=3;
                });
               }
              },
              child: Container(
                height: 70,
                width: 360,
                decoration: BoxDecoration(
                  color: checkAnswer(3),
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10,),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xff384358),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2,color: const Color.fromARGB(255, 255, 255, 255))
                      ),
                      child: Center(
                        child: Text(
                          "D",
                          style:GoogleFonts.dmSans(
                            fontSize: 18,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    
                    const SizedBox(width: 10,),
                    Text(
                      questionList[questionIndex]["option"][3],
                      style: GoogleFonts.dmSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
         backgroundColor: const Color(0xff384358),
        onPressed: (){
          if(selectedAnswerIndex==questionList[questionIndex]["answerIndex"]){
            rightAnswer++;
          }
          if(selectedAnswerIndex==-1){
            return ;
          }
          if(questionIndex<questionList.length-1){
            selectedAnswerIndex =-1;
            questionIndex++;
          }else{
            questionScreen=false;
          }
          setState(() {});
        },
        child: const Icon(
          Icons.forward_rounded,
          color: Color.fromARGB(255, 255, 201, 4)
        ),
      ),
    );


    }else{
      return Scaffold(
        appBar:AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color(0xff384358),
        centerTitle: true,
        title: Text(
          "Quiz App",
          style: GoogleFonts.dmSans(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: const Color.fromARGB(255, 255, 201, 4)
          ),
        ),
      ),  

      body: Center(
        child: Column(
          children: [   
            Image.asset(
              fit: BoxFit.fill,
              "assets/congo3.png",
              height: 300,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Quiz Completed",
              style: GoogleFonts.dmSans(
                fontSize: 26,
                fontWeight: FontWeight.w600
              ),
            ),   
            const SizedBox(
              height: 30,
            ),
            Text(" Your Score",
            style: GoogleFonts.dmSans(
              fontSize: 23,
              fontWeight: FontWeight.w500
            ),
          ),
      
          const SizedBox(
              height: 10,
          ),      
            Text(
              "$rightAnswer / ${questionList.length}",
            style: GoogleFonts.dmSans(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
      
          const SizedBox(
              height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              backgroundColor: const Color(0xff384358),
              minimumSize: const Size(120, 55)
            ),
            onPressed: (){
              questionIndex = 0;
              questionScreen = true;
              rightAnswer = 0;
              selectedAnswerIndex = -1;
      
              setState(() {});
            },
            child:SizedBox(
              height: 60,
              width: 150,
              child: Center(
                child: Text(
                  "Restart",
                  style: GoogleFonts.dmSans(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),  
                  ),
              ),
            ),
            )
          ],
        ),
      ),
      );
    }
  }
}