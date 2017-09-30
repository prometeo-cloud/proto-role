# Prometeo role prototype

The template for a role in the Prometeo library.

To create a new Prometeo role execute the following commands.   
The result will be a new folder with the new role.

```bash
$ git clone https://github.com/prometeo-cloud/proto-role.git 
$ cd proto-role
$ sh init.sh
```
The table below explains the convention for naming roles:

| Area  | Example  | Description | 
|---|---|---|   
| Product  | openshift  | The name of the product the role is for. |  
| Action  | create, install or configure  | Whether the role creates, installs or configure something. |     
| Subject | tenant | The subject that the action is acting on. The subject can be missing for Install and Configure actions when the action acts on the whole product. |  

- use the **create** action when the role creates something such as zip  file
- use the **install** action when the role is installing some package
- use the **configure** action when the role is updating the configuration of a pre-installed package

Examples of role names:

- **openshift_create_tenant** 
- **haproxy_install**
- **tomcat_configure_port**