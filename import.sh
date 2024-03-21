#!/bin/bash
set -e

# run it with doppler manually
# one time action, do with local state, run after terraform init & plan
# github credentials are comming from doppler here
# afterwards locally terraform plan & apply
terraform import 'module.repository["fem-eci-terraform-github"].github_repository.self' 'fem-eci-terraform-github'
terraform import 'module.repository["fem-eci-terraform-tfe"].github_repository.self' 'fem-eci-terraform-tfe'