#!/bin/bash

docker run -v $(pwd)/host_app:/app -w /app python:3.12-slim python app.py
