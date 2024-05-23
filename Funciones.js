function registro() {
    var ru = $("#txtRegistro").val();
    var nombre = $("#txtNombre").val();
    var apellido = $("#txtApellido").val();
    var contra = $("#txtContra").val();

    $.ajax({
        url: "Registro.aspx",
        data: { ru: ru, name: nombre, ape: apellido, pass: contra },
        type: "post",
        success: function (data) {
            if (data.substring(0, 10) === "Registrado") {
                alert("Registrado correctamente");
                location.href = "Login.aspx";
            } else 
                alert("Error al registrar en registro");
        },
        error: function (data) {
            alert("Error: " + data);
        }
    });
}

function login() {
    var ru = $("#txtRegistro").val(); // recibe el registro de txtRegistro
    var contra = $("#txtContra").val(); // recibe la clave de txtContra

    $.ajax({
        url: "Validar.aspx", // Los datos se envian a Validar.aspx
        type: "post", // el tipo de envio es post
        data: { ru: ru, pass: contra }, // enviamos los datos en variables
        success: function (data) {
            if (data.substring(0, 5) === "Exito") { // si data es igual a Exito
                alert("Login correcto");
                location.href = "Inicio.aspx"; // redirecciona a Inicio.aspx
            } else {
                alert("Registro o password incorrecto en Login");
            }
        },
        error: function (data) {
            alert("Error: " + data);
        }
    });
}
