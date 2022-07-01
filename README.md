# models-api
An application-level API that abstracts predict endpoints to your deployed ML models.

# Versions
Our initial version will be in Python.

## Version 0.1
Current plan is is to enable RESTful calls to back-end ML-models.
- This work will be exported as a container. 
- To use it you expected to create your own container with a config file.
- Config file contains a list of the models deployed, their tags, and http/s routes. 
- It also contains what is the deployment pattern (e.g. A/B deployment)
