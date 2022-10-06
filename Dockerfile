# pyvista/docker/
# https://github.com/pyvista/pyvista/tree/main/docker

FROM ghcr.io/pyvista/pyvista:latest

# Install Python packages
ADD requirements.txt .
RUN pip install -r requirements.txt

# Set the jl command to create a JupytetLab shortcut
ADD launch_jupyterlab.sh /
RUN echo "alias jl='bash /launch_jupyterlab.sh'" >> ~/.bashrc