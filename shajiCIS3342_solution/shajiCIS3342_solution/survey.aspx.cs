using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shajiCIS3342_solution
{
    
    public partial class survey : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            string studentFName = Request["txtfname"];
            string studentLName = Request["txtlname"];
            string studentID = Request["txtstudentID"];
            string course = Request["courseselector"];
            string q1 = Request["question1"];
            string q2 = Request["question2"];
            string q3 = Request["question3"];
            string q4 = Request["question4"];
            string q5 = Request["question5"];
            string q6 = Request["question6"];
            string q7 = Request["question7"];
            string q8 = Request["question8"];
            string q9 = Request["question9"];
            string q10 = Request["question10"];
            string q11 = Request["question11"];
            string q12 = Request["question12"];
            string q13 = Request["question13"];
            string q14 = Request["question14"];
            string q15 = Request["question15"];
            string q16 = Request["question16"];
            string q17 = Request["question17"];
            string q18 = Request["question18"];
            string q19 = Request["question19"];
            string q20 = Request["question20"];
            string teacher = "";
            string courseEvalTitle = course;
            string courseLetterGrade = "";
            string teacherLetterGrade = "";

            string[] courseResults = { q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12 };

            string[] teacherResults = { q13, q14, q15, q16, q17, q18, q19, q20 };

            lblStudentName.Text = studentFName + " " + studentLName;
            lblStudentID.Text = studentID;
            lblEvalTitle.Text = courseEvalTitle;
            lblTeacher.Text = assignTeacher(course, teacher);
            lblq1.Text = q1;
            lblq2.Text = q2;
            lblq3.Text = q3;
            lblq4.Text = q4;
            lblq5.Text = q5;
            lblq6.Text = q6;
            lblq7.Text = q7;
            lblq8.Text = q8;
            lblq9.Text = q9;
            lblq10.Text = q10;
            lblq11.Text = q11;
            lblq12.Text = q12;
            lblq13.Text = q13;
            lblq14.Text = q14;
            lblq15.Text = q15;
            lblq16.Text = q16;
            lblq17.Text = q17;
            lblq18.Text = q18;
            lblq19.Text = q19;
            lblq20.Text = q20;
            lblcourseResult.Text = assignGradeLetter(courseResults, courseLetterGrade);
            lblteacherResult.Text = assignInstructorLetter(teacherResults, teacherLetterGrade);
        }
        
        public string assignTeacher(string course, string teacher)
        {
            if (course == "CIS 3342: Server-side Web Application Development")
            {
                teacher = "Professor Pascucci";
            }
            else if (course == "CIS 4378: Computer and Network Security")
            {
                teacher = "Professor Tan";
            }
            else if (course == "CIS 4296: Capstone 1")
            {
                teacher = "Professor Carey";
            }
            else if (course == "CIS 3603: User Expereince Design")
            {
                teacher = "Professor Romain";
            }
            return teacher;
        }
        public double calculatecourseScore(string[] courseResults)
        {
            int courseScore = 0;
            for (int i = 0; i < courseResults.Length; i++)
            {
                if (courseResults[i] == "Strongly agree")
                {
                    courseScore += 5;
                }
                if (courseResults[i] == "Agree")
                {
                    courseScore += 4;
                }
                if (courseResults[i] == "Neutral")
                {
                    courseScore += 3;
                }
                if (courseResults[i] == "Disagree")
                {
                    courseScore += 2;
                }
                if (courseResults[i] == "Strongly disagree")
                {
                    courseScore += 1;
                }
            }
            return courseScore;
        }

        public double calculateinstructorScore(string[] teacherResults)
        {
            int instructorScore = 0;
            for (int i = 0; i < teacherResults.Length; i++)
            {
                if (teacherResults[i] == "Strongly agree")
                {
                    instructorScore += 5;
                }
                if (teacherResults[i] == "Agree")
                {
                    instructorScore += 4;
                }
                if (teacherResults[i] == "Neutral")
                {
                    instructorScore += 3;
                }
                if (teacherResults[i] == "Disagree")
                {
                    instructorScore += 2;
                }
                if (teacherResults[i] == "Strongly disagree")
                {
                    instructorScore += 1;
                }
            }
            return instructorScore;

        }
        public double calculateCourseTotal(string[] courseResults)
        {
            double totalCourse = (calculateinstructorScore(courseResults) / 60) * 100;
            return totalCourse;
        }
        public double calculateinstructorTotal(string[] teacherResults)
        {
            double totalInstructor = (calculateinstructorScore(teacherResults) / 40) * 100;
            return totalInstructor;
        }
        public string assignGradeLetter(string[] courseResults, string courseLetterGrade)
        {

            if (calculateCourseTotal(courseResults) <= 100 && calculateCourseTotal(courseResults) >= 90)
            {
                courseLetterGrade = "A";
            }
            if (calculateCourseTotal(courseResults) < 90 && calculateCourseTotal(courseResults) >= 80)
            {
                courseLetterGrade = "B";
            }
            if (calculateCourseTotal(courseResults) < 80 && calculateCourseTotal(courseResults) >= 70)
            {
                courseLetterGrade = "C";
            }
            if (calculateCourseTotal(courseResults) < 70 && calculateCourseTotal(courseResults) >= 60)
            {
                courseLetterGrade = "D";
            }
            if (calculateCourseTotal(courseResults) < 60)
            {
                courseLetterGrade = "F";
            }
            return courseLetterGrade;
        }

        public string assignInstructorLetter(string[] teacherResults, string teacherLetterGrade)
        {
            if (calculateinstructorTotal(teacherResults) <= 100 && calculateinstructorTotal(teacherResults) >= 90)
            {
                teacherLetterGrade = "A";
            }
            if (calculateinstructorTotal(teacherResults) < 90 && calculateinstructorTotal(teacherResults) >= 80)
            {
                teacherLetterGrade = "B";
            }
            if (calculateinstructorTotal(teacherResults) < 80 && calculateinstructorTotal(teacherResults) >= 70)
            {
                teacherLetterGrade = "C";
            }
            if (calculateinstructorTotal(teacherResults) < 70 && calculateinstructorTotal(teacherResults) >= 60)
            {
                teacherLetterGrade = "D";
            }
            if (calculateinstructorTotal(teacherResults) < 60)
            {
                teacherLetterGrade = "F";
            }
            return teacherLetterGrade;
        }

        public void txtfNameValidation()
        {

        }
    }

   
}
