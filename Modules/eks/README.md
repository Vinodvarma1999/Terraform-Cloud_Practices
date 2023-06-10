# EKS Cluster

This repository contains the Terraform configuration files and scripts to create and manage an EKS (Elastic Kubernetes Service) cluster on AWS (Amazon Web Services).

## Table of Contents

- main.tf
- variables.tf
- output.tf

## Introduction

The EKS Cluster project aims to provide an automated way to provision and manage an EKS cluster using Terraform. It sets up a highly available and scalable Kubernetes cluster on AWS, allowing you to deploy containerized applications easily.

## Usage

The EKS cluster module can be customized based on your specific requirements. Some common usage scenarios include:

- Modifying the cluster configuration: Update the module input variables in your root module's `.tf` files to adjust parameters such as cluster size, instance types, networking settings, and security configurations.
- Adding worker nodes: Adjust the module input variables in your root module's `.tf` files to increase the number of worker nodes in the cluster to handle increased workload.
- Deploying applications: After provisioning the EKS cluster using the module, use `kubectl` to deploy your applications to the EKS cluster. Refer to the Kubernetes documentation for more details on deploying and managing applications.

For detailed usage instructions and examples, refer to the project's [documentation](docs/).

