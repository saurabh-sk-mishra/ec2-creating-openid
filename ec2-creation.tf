name: Auto EC2 Launch

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main
  workflow_dispatch:  # optional manual trigger

permissions:
  id-token: write
  contents: read

jobs:
  test-run:
    runs-on: ubuntu-latest
    steps:
      - name: Hello from GitHub Actions
        run: echo "Hello, workflow ran!"
