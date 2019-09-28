# Alternatives for deprecated 'kubectl run' commands
`kubectl run` command is a common and usefull way to quicky create kubernetes ressources without dealing with yaml files. Since kubernetes v1.12, creation acknowledgment ("object created") is preceeded by a message noting that this creation command is reprecated and will no more available in a feature version.

Indeed, we can create some "runnable" resources like Pod and Deployment ([the complete list](https://kubernetes.io/docs/reference/kubectl/conventions/#generators)) using 'kubectl run' with the `--generator` flag. But those generators are deprecated since v1.12 except 'run-pod/v1' generator.

The above deprecation covers `--restart` and `--generator` flags as well. Like `--generator` flag, they are also used to set generator.
| Generated Resource       |  Flag                 | 
| -----------------------  |:--------------------  |
| Pod                      | --restart=Never       | 
| Deployment (deprecated)  | --restart=Always      | 
| Job (deprecated)         | --restart=OnFailure   | 
| Cron Job (deprecated)    | --schedule=\<cron\>   |
Source: [kubernetes.io](https://kubernetes.io/docs/reference/kubectl/conventions/#generators)

This post aims to list available alternatives in latest available kubernetes version at the time of writing which is **v1.15.0** for both client and server.
## Pod

There is no deprecation for Pod creation. We have two options to create a Pod. You can either use `--restart` or `--generator` flags.

``` 
kubectl run nginx --restart=Never --image=nginx 
```
**AND**
```
kubectl run nginx --generator=run-pod/v1 --image=nginx
```

## Deployement
Deprecated command:
```
kubectl run nginx --restart=Always --image=nginx
```
Returned message:
```
kubectl run --generator=deployment/apps.v1 is DEPRECATED and will be removed in a future version. Use kubectl run --generator=run-pod/v1 or kubectl create instead.
deployment.apps/nginx created
```
It talks about 2 alternatives. But only the `kubectl create` command works as expected and generate a Deployment ressource.

**The "Create" alternative**
```
kubectl create deployment nginx --image=nginx 
```
## Job
Deprecated command:
```
kubectl run my-job --image=busybox --restart=OnFailure
```
Alternative command:
```
kubectl create job my-job --image=busybox -- date
```
## Cronjob
Deprecated command:
```
kubectl run pi --schedule="0/5 * * * ?" --image=perl --restart=OnFailure -- perl -Mbignum=bpi -wle 'print bpi(2000)'
```
Alternative command:
```
kubectl run pi --schedule="0/5 * * * ?" --restart=OnFailure --generator=batch/v2alpha1 --image=perl -- perl -Mbignum=bpi -wle 'print bpi(2000)'
```
```
kubectl create job pi --schedule="0/5 * * * ?" --image=perl --restart=OnFailure -- perl -Mbignum=bpi -wle 'print bpi(2000)'
```