<%--
  Created by IntelliJ IDEA.
  User: dezmonemusgrove
  Date: 12/1/21
  Time: 12:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="partials/navbar.jsp"%>
    <title>Title</title>
    <%@ include file="partials/head.jsp"%>
</head>
<body>
<h1>Welcome to Pizza Planet</h1>
<h3>Would you like to order some pizza?</h3>
<form action="pizza-order" method="POST">
    <div class="form-group">
        <label for="pizzaCrust">Crust</label>
        <select name="crust" class="form-control" id="pizzaCrust">
            <option value="handTossed">Hand Tossed</option>
            <option value="thin">Thin</option>
            <option value="deepDish">Deep Dish</option>
            <option value="stuffed">Stuffed</option>
            <option value="newYork">New York Style</option>
        </select>
    </div>
    <div class="form-group">
        <label for="sauceType">Sauce</label>
        <select name="sauce" class="form-control" id="sauceType">
            <option value="pesto">Pesto</option>
            <option value="marinara">Marinara</option>
            <option value="whiteGarlicSauce">White Garlic Sauce</option>
            <option value="buffalo">Buffalo</option>
            <option value="hummus">Hummus</option>
        </select>
    </div>
    <div class="form-group">
        <label for="size">Size</label>
        <select name="size" class="form-control" id="size">
            <option value="personalPan">Personal Pan</option>
            <option value="small">Small</option>
            <option value="medium">Medium</option>
            <option value="large">Large</option>
            <option value="extraLarge">Extra Large</option>
        </select>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="mozzarellaCheese" id="mozzarellaCheese" name="toppings">
        <label class="form-check-label" for="mozzarellaCheese">
            Mozzarella Cheese
        </label>
    </div>    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="cheddar" id="cheddar" name="toppings">
        <label class="form-check-label" for="cheddar">
            Cheddar
        </label>
    </div>    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="ricotta" id="ricotta" name="toppings">
        <label class="form-check-label" for="ricotta">
            Ricotta Cheese
        </label>
    </div>    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="pepperoni" id="pepperoni" name="toppings">
        <label class="form-check-label" for="pepperoni">
            Pepperoni
        </label>
    </div>    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="italianSausage" id="italianSausage" name="toppings">
        <label class="form-check-label" for="italianSausage">
            Italian Sausage
        </label>
    </div>    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="mushroom" id="mushroom" name="toppings">
        <label class="form-check-label" for="mushroom">
            Mushroom
        </label>
    </div>    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="greenPepper" id="greenPepper" name="toppings">
        <label class="form-check-label" for="greenPepper">
            Green Pepper
        </label>
    </div>
<br>
    <label>Delivery Address</label>
    <div class="form-group">
        <label for="inputAddress">Address</label>
        <input name="address" type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
    </div>
<%--    <div class="form-group">--%>
<%--        <label for="inputAddress2">Address 2</label>--%>
<%--        <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">--%>
<%--    </div>--%>
<%--    <div class="form-row">--%>
<%--        <div class="form-group col-md-6">--%>
<%--            <label for="inputCity">City</label>--%>
<%--            <input type="text" class="form-control" id="inputCity">--%>
<%--        </div>--%>
<%--        <div class="form-group col-md-4">--%>
<%--            <label for="inputState">State</label>--%>
<%--            <select id="inputState" class="form-control">--%>
<%--                <option selected>Choose...</option>--%>
<%--                <option>...</option>--%>
<%--            </select>--%>
<%--        </div>--%>
<%--        <div class="form-group col-md-2">--%>
<%--            <label for="inputZip">Zip</label>--%>
<%--            <input type="text" class="form-control" id="inputZip">--%>
<%--        </div>--%>
<%--    </div>--%>
    <br>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</body>
</html>
