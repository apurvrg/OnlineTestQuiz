<!DOCTYPE html>
<html>

<title>Subject-C</title>
<style>

h2{
text-align: center;

}

h3{
text-align: center;
font-family: Arial, Helvetica, sans-serif;
font-size: 20px;
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
 border-radius: 50px;
  box-sizing: border-box;
}

button[type=submit] {
  width: 40%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 50px;
  cursor: pointer;
}

button[type=reset] {
  width: 40%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
 border-radius: 50px;
  cursor: pointer;
}

button[type=submit]:hover {
  background-color: #45a049;
}

button[type=reset]:hover {
  background-color: #45a049;
}

div {
  border-radius: 50px;
  background-color: #f2f2f2;
  padding: 20px 120px 50px 120px;
  margin: 20px 450px 50px 450px;
}

label{
font-size: 20px;
font-weight: bold;
}
</style>
<body>



<div>
  <form action="insertCque">
  <h2>INSERT QUESTION</h2>
    <label for="que">Question</label>
    <input type="text" id="que" name="question" placeholder="Question" required>

    <label for="OptA">Option A</label>
    <input type="text" id="OptA" name="OptA" placeholder="Option A" required>

    <label for="OptB">Option B</label>
    <input type="text" id="OptB" name="OptB" placeholder="Option B"required>
    
     <label for="OptC">Option C</label>
    <input type="text" id="OptC" name="OptC" placeholder="Option C"required>
    
     <label for="OptD">Option D</label>
    <input type="text" id="OptD" name="OptD" placeholder="Option D"required>
    
     <label for="correctAns">Correct Answer</label>
    <input type="text" id="correctAns" name="correctAns" placeholder="Correct Answer"required>
    

     <button type="submit"><h3>Insert</h3></button>
    <button type="reset"><h3>Reset</h3></button>

  </form>
</div>

</body>
</html>
