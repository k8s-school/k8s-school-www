---
title: 'Fabrice Jammes'
date: 2019-10-24T11:01:34+07:00
draft: false
# image: 'team/fjammes.jpg'
jobtitle: 'Expert formateur Kubernetes, OpenShift et OpenTelemetry'
email: 'fabrice.jammes@gmail.com'
linkedinurl: 'https://www.linkedin.com/in/fabrice-jammes-5b29b042/'
weight: 1
description: 'Votre formateur Kubernetes, OpenShift et OpenTelemetry : ingénieur de recherche CNRS, 10 ans dans l’équipe Qserv de Stanford pour le Rubin Observatory, certifié CKA et CKS, speaker à la KubeCon Europe 2019 et 2024.'
---

**Formateur Kubernetes, OpenShift et OpenTelemetry — Ingénieur de recherche CNRS (IN2P3), expert des plateformes de données distribuées à l'échelle du PetaOctet.**

Fabrice Jammes conçoit et exploite des plateformes de données scientifiques à très grande échelle depuis 2012, et sur Kubernetes depuis 2018. Il exerce son activité de formation et d'expertise via K8s-school, en parallèle de son poste au CNRS.

Disponible pour des formations Cloud Native, des conférences et du conseil.

[![PDF](/images/pdf-64x64.png) **Télécharger le CV (PDF)**](/images/CV_Fabrice_Jammes.pdf)

## Expérience

### Formation Kubernetes, OpenShift et OpenTelemetry
*K8s-school et CNRS Formation Entreprises — depuis 2018*

- Formations **OpenShift** et **OpenTelemetry** pour de grands comptes.
- Responsable scientifique de 4 formations Kubernetes et OpenShift du catalogue [CNRS Formation Entreprises](/formations-kubernetes/cnrs-formation-entreprises/) :
  - OpenShift : déploiement et gestion d'applications conteneurisées avec Kubernetes
  - OpenShift avancé : sécurité, haute disponibilité et administration en production
  - Kubernetes : déploiement et orchestration d'applications
  - Déploiement et orchestration d'applications avec Kubernetes : de l'initiation à la production
- Formations Kubernetes initiation, avancé et sécurité (CKA, CKS) et [OpenTelemetry](/formations-kubernetes/opentelemetry/) pour des équipes de recherche et des clients industriels : HPE, Axians, Moody's Analytics, Murex, Afnic, Université de Stanford… (voir les [références](/references/)).
- Pédagogie centrée sur la pratique : labs sur [Kind](https://kind.sigs.k8s.io/), conçus pour être rejoués en autonomie.

*Les projets ci-dessous relèvent de son activité de recherche au CNRS. Ils illustrent son expérience et ne constituent ni des références clients ni des partenariats de K8s-school.*

### Rubin Observatory (ex-LSST) — Qserv, base de données distribuée
*CNRS / IN2P3, en collaboration avec SLAC National Accelerator Laboratory (Université de Stanford) — depuis 2012*

- Membre pendant une dizaine d'années de l'équipe de développement de [Qserv](https://github.com/lsst/qserv), intégrée au groupe Data Management de Stanford/SLAC (Menlo Park, Californie).
- Qserv est la base de données SQL distribuée qui héberge le catalogue du Rubin Observatory : plusieurs PetaOctets d'objets célestes, interrogeables par la communauté astronomique mondiale.
- Conception et développement de l'[opérateur Kubernetes de Qserv](https://github.com/lsst/qserv-operator) : déploiement complet de l'application à partir d'une courte ressource personnalisée (CRD).
- Pipeline d'ingestion des données (qserv-ingest) orchestré par Argo Workflows.
- Mise en production sur les clusters Kubernetes du CC-IN2P3 et sur [Google Kubernetes Engine](https://cloud.google.com/kubernetes-engine).

### Fink-Broker — traitement temps réel d'alertes astronomiques
*CNRS / IN2P3 et Université Paris-Saclay*

- Architecture de la plateforme qui filtre et classe, chaque nuit, des millions d'alertes émises par le Rubin Observatory.
- Stack complète sur Kubernetes bare-metal et OpenStack : Kafka, Spark, MinIO, ArgoCD.
- Intégration et livraison continues sur une infrastructure CI/CD auto-hébergée sur Kubernetes.

## Compétences

- **OpenShift** : déploiement d'applications, sécurité (SCC, RBAC), haute disponibilité, administration en production
- **Observabilité** : OpenTelemetry (SDK, collecteur, OTTL), Prometheus, Grafana, Jaeger
- **Kubernetes** : administration, sécurité, opérateurs (Operator SDK), CRD, GitOps (ArgoCD), Argo Workflows
- **Plateformes** : bare-metal (HPC, recherche scientifique), Kind (développement, CI/CD, formation), OpenShift (entreprise, conformité), GKE, OpenStack
- **Données** : bases de données distribuées (Qserv, MariaDB, XRootD), Kafka, Spark, MinIO
- **Développement** : Go, Python, C++, shell ; CI/CD, conteneurisation

## Conférences

- **KubeCon + CloudNativeCon Europe 2024** (Paris) — [*Fink on Kubernetes: Efficient Management of Massive Alert Streams for Astronomical Objects Identification*](https://kccnceu2024.sched.com/event/1YeOZ), avec Julien Peloton et Etienne Fayen ([slides](https://hosted-files.sched.co/kccnceu2024/62/KubeCon2024.pdf))
- **KubeCon + CloudNativeCon Europe 2019** (Barcelone) — Qserv, l'architecture distribuée du Rubin Observatory sur Kubernetes
- **Cloud-Native Data Management Days 2021**
- **ComputeOps 2023** (IN2P3) — Qserv et son opérateur Kubernetes
- **Podcast Electro Monkeys**

## Publications

- G. Mainetti, F. Hernandez, Q. Le Boulc'h, F. Jammes, déploiement de Qserv sur Kubernetes via un opérateur, CHEP 2023, [EPJ Web of Conferences (2024)](https://www.epj-conferences.org/articles/epjconf/pdf/2024/05/epjconf_chep2024_07017.pdf)
- F. Hernandez, F. Jammes, J. Becla, *Building, Configuring, Deploying and Running Distributed, Peta-scale Data Analysis Software at IN2P3*, JRES 2015

## Certifications

- **CKS** — Certified Kubernetes Security Specialist, The Linux Foundation (2021)
- **CKA** — Certified Kubernetes Administrator, The Linux Foundation (2019)

[![Certification Sécurité CKS](/images/CKS.png)](/images/CKS_Certificate_Fabrice_Jammes.pdf)
[![Certification Administration CKA](/images/CKA.png)](/images/CKA_Certificate_Fabrice_Jammes.pdf)

## Formation et langues

- Diplôme d'ingénieur, **Polytech Clermont-Ferrand** (1999)
- Français (langue maternelle), anglais (professionnel, plusieurs années de travail dans une équipe américaine)

## En vidéo

### KubeCon Europe 2024

{{< youtube id="JklTII0HcKk" autoplay="false" >}}

### KubeCon Europe 2019

{{< youtube id="YC_nIGbI8Hk" autoplay="false" >}}

### CNDM 2021

{{< youtube id="9o8gZJMkFts" autoplay="false" >}}

### Podcast Electro Monkeys

<iframe style="border-radius:12px" src="https://open.spotify.com/embed/episode/0pWAVZ0EKChnclu6Q3cCQu?utm_source=generator" width="100%" height="352" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>

<a href="https://stackoverflow.com/users/2784039/fabrice-jammes"><img src="https://stackoverflow.com/users/flair/2784039.png" width="208" height="58" alt="profile for Fabrice Jammes at Stack Overflow, Q&amp;A for professional and enthusiast programmers" title="profile for Fabrice Jammes at Stack Overflow, Q&amp;A for professional and enthusiast programmers"></a>
