<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Créer une carte</title>

    <style >
        label {
            width: 7rem;
            display: inline-block;
        }
    </style>
</head>
<body>


<form action="add-card" method="post">
    <div>
        <label for="Name">Name:</label>
        <input id="Name" type="text" name="name"/>
    </div>

    <div>
        <label for="Color">Color:</label>
        <input id="Color" type="text" name="color"/>
    </div>

    <div>
        <label for="SuperPower">SuperPower:</label>
        <input id="SuperPower" type="text" name="super_power"/>
    </div>

    <div>
        <label for="img url:">img url:</label>
        <input id="img url:" type="text" name="img_url"/>
    </div>

    <div>
        <button type="submit">Create</button>
    </div>

</form>
</body>
</html>