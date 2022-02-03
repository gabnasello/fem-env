# pyvista/docker/
# https://github.com/pyvista/pyvista/tree/main/docker

FROM ghcr.io/pyvista/pyvista:latest

# Install Python packages
ADD requirements.txt .
RUN pip install -r requirements.txt

# Set the jl command to create a JupytetLab shortcut
EXPOSE 7777
RUN echo "alias jl='export SHELL=/bin/bash; jupyter lab --allow-root --port=7777 --ip=0.0.0.0'" >> ~/.bashrc