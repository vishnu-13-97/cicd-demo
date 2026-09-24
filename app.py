from http.server import BaseHTTPRequestHandler, HTTPServer

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        message = b"Hello from CI/CD - Version 2"

        self.send_response(200)
        self.send_header("Content-type", "text/plain")
        self.end_headers()

        self.wfile.write(message)

server = HTTPServer(("0.0.0.0", 8000), Handler)

print("Server running on port 8000")

server.serve_forever()
