# syntax=docker/dockerfile:1
FROM --platform=linux/amd64 ubuntu:22.04

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y \
    software-properties-common \
    udev \
    sudo \
    wget \
    gnupg \
    unzip \
    openjfx \
    libopenjfx-java \
    libopenjfx-jni \
    openjdk-11-jdk \
    libxext6 \
    libxrender1 \
    libxtst6 \
    libxi6 \
    && rm -rf /var/lib/apt/lists/*

# Create the udev rule
RUN echo 'SUBSYSTEM=="usb", ATTRS{idVendor}=="057e", ATTRS{idProduct}=="3000", GROUP="plugdev"' > /etc/udev/rules.d/99-switch.rules

# Add a user to avoid running as root
RUN groupadd -r plugdev || true && useradd -m -g plugdev -s /bin/bash quarkuser
RUN usermod -aG sudo quarkuser

# This was to allow sudo for any user
# RUN echo "quarkuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Copy the Quark.jar file to the container
COPY Quark.jar /home/quarkuser/Quark.jar

# Set user and working directory
USER quarkuser
WORKDIR /home/quarkuser

# Command to run the application (without Xvfb, will use host display)
CMD ["java", "-jar", "Quark.jar"]
