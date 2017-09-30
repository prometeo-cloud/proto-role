# [product_action_subject]

## Description:

Write a simple description of the role here.

## Behaviour:

Use Gherkin to define the behaviour of the role as shwon in the following examples:

**Feature:** Fails if "pre-condition" not met
- **Given** the pre-condition 
- **Then** the creation/installation/configuration process is halted


**Feature:** Creates/Installs/Configures a Subject  
- **Given** a pre-condition
- **Given** another pre-condition 
- **When** the action  
- **Then** the outcome   
- **Then** another outcome  


## Configuration:

A list of the external variables used by the role.

| Variable  | Description  | Example  | 
|---|---|---|
| **var1**  | Var1 description  |  Var1 example. |
| **var2**  |   |   |
| **var3**  |   |   |


## Usage:

How to invoke the role from a playbook:

```yaml
- name: Creates Tenant
  include_role:
    name: OpenShift_Create_Tenant
  vars:
    var1: '???'
    var2: '???'
    var3: '???'
```