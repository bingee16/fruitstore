<%@ page language="java" contentType="text/html"%>

<html>
    <body bgcolor="lightblue">
        
        <h2>Welcome to the Fruit Store!</h2>
        <p>We deliver top quality fresh fruit directly to your home.</p>
        <jsp:useBean id="clock" class="java.util.Date" />
        <img src="fruits.jpg" alt="fruits" height="300"/>
        <% if (clock.getHours() < 12){ %>
        Good Morning!
        <% } else if (clock.getHours() < 17){ %>
        Good Day Sir!
        <% } else { %>
        Grand Evening!
        <% } %>
        <h3>Choose your fruit:</h3>
        <form action="index.jsp">
            <input type="checkbox" name="fruits" value="Apple">Apple<br> 
            <input type="checkbox" name="fruits" value="Banana">Banana<br>
            <input type="checkbox" name="fruits" vaule="Orange">Orange<br>
            <input type="checkbox" name="fruits" value="DragonFruit">Dragon Fruit<br>
            <input type="checkbox" name="fruits" value="Strawberry">Strawberry<br>
            <input type="submit" value="Enter">
       </form>
       <%
       //use the request object to get the array of fruits that the user choose
       String[] picked = request.getParameterValues("fruits");
       
       //if the array is not null, then loop through the arrayof fruits
       if(picked != null && picked.length != 0){
       %>
       You picked the following fruits:<ul>
           <%
               //loop through the array of fruits and display each fruit.
               for (int i = 0; i < picked.length; i++){
                   out.println("<li>" + picked[i]);
               }//end for loop
            %>
       </ul>
       <% }//end if loop %>
               
    </body>
</html>