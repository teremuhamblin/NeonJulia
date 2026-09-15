module NeonJulia

using HTTP

const HTML = """
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>NeonJulia</title>
    <style>
        body {
            background: #0a0a0a;
            color: #fff;
            text-align: center;
            font-family: Arial, sans-serif;
            padding: 40px;
        }
        button {
            padding: 12px 25px;
            background: #00eaff;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            box-shadow: 0 0 15px #00eaff;
        }
    </style>
</head>
<body>
    <h1>NeonJulia</h1>
    <p>Mini‑webapp néon servie par Julia.</p>
    <button onclick="alert('Pulse néon activé !')">Pulse</button>
</body>
</html>
"""

function handler(req::HTTP.Request)
    return HTTP.Response(200, HTML)
end

function start_server(port::Int=8080)
    println("NeonJulia lancé sur http://localhost:$port")
    HTTP.serve(handler, ip"0.0.0.0", port)
end

end # module

using .NeonJulia
NeonJulia.start_server()
