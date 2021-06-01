function validateForm() {
    var fname = document.getElementById("txtfname").value;
    var lname = document.getElementById("txtlname").value;
    var ID = document.getElementById("txtstudentID").value;
    if (fname === "") {
        alert("Please confirm all questions and textboxes are filled in.");
    } else if (lname === "") {
        alert("Please confirm all questions and textboxes are filled in.");
    } else if (ID === "") {
        alert("Please confirm all questions and textboxes are filled in.");
    }
}