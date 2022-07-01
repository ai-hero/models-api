import falcon
import falcon.asgi

from routes.health_check import HealthCheck

# falcon.asgi.App instances are callable ASGI apps...
# in larger applications the app is created in a separate file
app = falcon.asgi.App()

# Health Check
app.add_route("/", HealthCheck())
