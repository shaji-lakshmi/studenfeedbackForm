<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="survey.aspx.cs" Inherits="shajiCIS3342_solution.survey" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link href="assets/CSS/results.css" rel="stylesheet" />
    <title>CIS 3342: SFF Results</title>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">

                    <h4>Student Information: </h4>
                    <h6>
                        <asp:Label ID="lblStudentName" runat="server" Text="Label"></asp:Label></h6>

                    <h6>
                        <asp:Label ID="lblStudentID" runat="server" Text="Label"></asp:Label></h6>
                    <br />

                </div>
            </div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">

                    <h4>Evaluation results for:  <strong>
                        <asp:Label ID="lblEvalTitle" runat="server" Text="Label"></asp:Label></strong></h4>

                    <br />

                    <div>
                        <h6><strong>Q1: </strong>The lectures, tests, and assignments complemented each other.</h6>
                        <h6><strong>
                            <asp:Label ID="lblq1" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q2: </strong>The instructional materials (i.e., books, readings, handouts, study guides, lab manuals, multimedia, software) increased my knowledge and skills in the subject matter.</h6>
                        <h6><strong>
                            <asp:Label ID="lblq2" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q3: </strong>The course was organized in a manner that helped me understand the underlying concepts.</h6>
                        <h6><strong>
                            <asp:Label ID="lblq3" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q4: </strong>The course gave me the confidence to do more advanced work in the subject</h6>
                        <h6><strong>
                            <asp:Label ID="lblq4" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q5: </strong>The examinations, projects measured my knowledge of the course material</h6>
                        <h6><strong>
                            <asp:Label ID="lblq5" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q6: </strong>I believe that what I’m being asked to learn in this course is important</h6>
                        <h6><strong>
                            <asp:Label ID="lblq6" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q7: </strong>I would highly recommend this course to other students</h6>
                        <h6><strong>
                            <asp:Label ID="lblq7" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q8: </strong>Overall, this course met my expectations for the quality of the course</h6>
                        <h6><strong>
                            <asp:Label ID="lblq8" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q9: </strong>The course was helpful in progress toward my degree</h6>
                        <h6><strong>
                            <asp:Label ID="lblq9" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q10: </strong>The course (or section) provided an appropriate balance between instruction and practice</h6>
                        <h6><strong>
                            <asp:Label ID="lblq10" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q11: </strong>The course provided an appropriate balance between instruction and practice</h6>
                        <h6><strong>
                            <asp:Label ID="lblq11" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q12: </strong>The lab complemented my understanding of the lectures</h6>
                        <h6><strong>
                            <asp:Label ID="lblq12" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>


                </div>
            </div>

            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">

                    <h4>Evaluation results for:  <strong>
                        <asp:Label ID="lblTeacher" runat="server" Text="Label"></asp:Label><br />
                    </strong></h4>

                     <div>
                        <h6><strong>Q13: </strong>The instructor effectively presented concepts and techniques</h6>
                        <h6><strong>
                            <asp:Label ID="lblq13" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q14: </strong>The instructor provided guidance for understanding course exercises</h6>
                        <h6><strong>
                            <asp:Label ID="lblq14" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q15: </strong>The instructor was helpful when I had difficulty performing activities</h6>
                        <h6><strong>
                            <asp:Label ID="lblq15" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q16: </strong>The instructor gave me constructive feedback</h6>
                        <h6><strong>
                            <asp:Label ID="lblq16" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q17: </strong>The instructor guided the discussion well</h6>
                        <h6><strong>
                            <asp:Label ID="lblq17" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q18: </strong>The instructor encouraged participation</h6>
                        <h6><strong>
                            <asp:Label ID="lblq18" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q19: </strong>The instructor gave me constructive feedback on assignments</h6>
                        <h6><strong>
                            <asp:Label ID="lblq19" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>

                    <div>
                        <h6><strong>Q20: </strong>The instructor increased my understanding of course material</h6>
                        <h6><strong>
                            <asp:Label ID="lblq20" runat="server" Text="Label"></asp:Label></strong></h6>
                    </div>
                </div>
            </div>

            <div class="row" id="results">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                <h4>Final Results</h4>
                
                <h6><strong>Course Grade: </strong><asp:Label ID="lblcourseResult" runat="server" Text="Label"></asp:Label></h6>
                <h6><strong>Instructor Grade: </strong><asp:Label ID="lblteacherResult" runat="server" Text="Label"></asp:Label></h6>
                </div>
                </div>
        </form>
    </div>
</body>
</html>
