# FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

# use this Dockerfile to install additional tools you might need, e.g.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

# Install system dependencies for Python, PostgreSQL, and Node.js
# This includes python3-dev, which is needed to compile C extensions for Python packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
       python3 \
       python3-pip \
       python3-venv \
       python3-dev \
       postgresql-client \
       libpq-dev \
       nodejs \
       npm
