# Lab 3 — hello-app on Kubernetes with Terraform

Name: Sudhith

Roll number: 261100680018

## Part 1: first `terraform plan`

Paste the `Plan:` line and the summary above it.

```text
Plan: 2 to add, 0 to change, 0 to destroy.
```

## Part 1: `terraform output -raw url`

```text
[http://192.168.49.2:30104](http://192.168.49.2:30104)
```

## Part 2: plan for the v1 → v2 image change

Paste the lines that show the image change, and the `Plan:` line.

```text
~ image = "shripada/hello-app:v1" -> "shripada/hello-app:v2"
Plan: 0 to add, 1 to change, 0 to destroy.
```

## Part 3: plan that found the drift after `kubectl scale`

```text
~ replicas = "5" -> "2"
```

## Part 4: `kubectl get svc -A` showing dev and prod

```text
default       hello-app-service-dev   NodePort    10.110.178.191   <none>        80:30104/TCP
default       hello-app-service-prod  NodePort    10.97.252.167    <none>        80:32406/TCP
```

## Break it: the error after deleting `terraform.tfstate`

```text
Error: deployments.apps "hello-app-deployment-dev" already exists
```

## Break it: the wrong selector

What did you see, and how did you find the cause? One or two sentences.

The services showed `<none>` for their endpoints. I found the cause by running `kubectl get endpoints`, which proved the Service could not route traffic because the label selector no longer matched the actual pod labels.

## Screenshot

Saved a browser screenshot as `screenshot.png` in the repository root.
