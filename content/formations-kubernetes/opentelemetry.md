---
title: 'Formation OpenTelemetry'
date: 2026-09-17T09:00:00+02:00
image: 'images/opentelemetry-icon-color.svg'
draft: false
featured: true
weight: 3
layout: wide
description: 'Rendez vos applications observables avec OpenTelemetry : logs, métriques et traces corrélés, du SDK Java au collecteur et à Grafana. 2 jours, 60 % de labs sur la démo officielle OpenTelemetry.'
---

<div class="not-prose mb-12 flex flex-col items-center gap-8 rounded-4xl bg-tertiary px-6 py-10 xl:flex-row xl:px-12">
  <img src="/images/opentelemetry-icon-color.svg" alt="OpenTelemetry" class="w-40 shrink-0" />
  <div>
    <p class="mb-3 text-lg">
      <strong class="text-primary">OpenTelemetry</strong> est le standard CNCF de l'observabilité : un seul SDK, un seul protocole (OTLP) et un collecteur unique pour vos <strong>logs, métriques et traces</strong>. Cette formation vous rend autonome pour instrumenter vos applications, configurer la chaîne de collecte et exploiter les trois signaux, corrélés, dans Grafana.
    </p>
    <div class="flex flex-wrap gap-2">
      <span class="rounded-full bg-white px-3 py-1 text-sm font-semibold text-primary">2 jours · 14 h</span>
      <span class="rounded-full bg-white px-3 py-1 text-sm font-semibold text-primary">60 % de labs</span>
      <span class="rounded-full bg-white px-3 py-1 text-sm font-semibold text-primary">Java · Spring Boot</span>
      <span class="rounded-full bg-white px-3 py-1 text-sm font-semibold text-primary">Kubernetes · Grafana · Jaeger · Prometheus</span>
      <span class="rounded-full bg-white px-3 py-1 text-sm font-semibold text-primary">Intra-entreprise · présentiel ou distanciel</span>
    </div>
  </div>
</div>

<div class="not-prose grid gap-8 md:grid-cols-3">
  <div class="rounded-4xl border border-primary/25 p-8">
    <h2 class="mb-3 text-xl font-bold text-primary">Objectifs</h2>
    <ul class="list-disc space-y-1 pl-5">
      <li>Situer OpenTelemetry dans le paysage de l'observabilité</li>
      <li>Instrumenter une application sans toucher au code (agent Java, starter Spring Boot) puis avec le SDK</li>
      <li>Configurer le collecteur : receivers, processors, exporters, OTTL</li>
      <li>Émettre, collecter et corréler logs, métriques et traces</li>
      <li>Construire un dashboard Grafana unifié avec alerting</li>
      <li>Protéger les données sensibles (masquage PII, RGPD)</li>
    </ul>
  </div>
  <div class="rounded-4xl border border-primary/25 p-8">
    <h2 class="mb-3 text-xl font-bold text-primary">Public</h2>
    <p class="mb-4">Développeurs, ingénieurs DevOps/SRE, architectes et responsables de plateformes qui veulent améliorer l'observabilité de leurs applications.</p>
    <h2 class="mb-3 text-xl font-bold text-primary">Prérequis</h2>
    <ul class="list-disc space-y-1 pl-5">
      <li>Pratique de la ligne de commande Linux</li>
      <li>Notions de conteneurs et de Kubernetes (<code>kubectl</code>)</li>
      <li>Lecture de code Java ; Spring Boot est un plus</li>
    </ul>
  </div>
  <div class="rounded-4xl border border-primary/25 p-8">
    <h2 class="mb-3 text-xl font-bold text-primary">Le fil rouge</h2>
    <p class="mb-4">Chaque participant dispose d'un cluster Kubernetes avec la <strong>démo officielle OpenTelemetry</strong> (Astronomy Shop : collecteur, Grafana, Jaeger, Prometheus, OpenSearch, Kafka, PostgreSQL) et d'un micro-service Spring Boot à rendre observable, de la première trace au masquage des données sensibles.</p>
    <p>Chaque lab produit un livrable visible : une trace, une métrique, un dashboard, une alerte qui sonne.</p>
  </div>
</div>

<div class="not-prose mt-16">
  <h2 class="mb-8 text-center text-4xl font-bold text-primary">Programme</h2>
  <div class="grid gap-6 md:grid-cols-2">
    <div class="rounded-4xl bg-tertiary/50 p-6">
      <p class="mb-3 text-sm font-bold uppercase tracking-wide text-secondary">Jour 1 · Fondations et chaîne de collecte</p>
      <ol class="space-y-4">
        <li>
          <strong class="text-primary">1. Introduction</strong><br />
          Observabilité vs monitoring, les trois piliers, OpenTelemetry (standard, écosystème, conventions sémantiques, OTLP, API/SDK, distributions).<br />
          <span class="text-sm">🧪 Lab 1 : démarrage de la stack et première trace de bout en bout</span>
        </li>
        <li>
          <strong class="text-primary">2. Instrumentation zero-code</strong><br />
          Agent Java et starter Spring Boot : installation, configuration, fonctionnement, comparaison.<br />
          <span class="text-sm">🧪 Lab 2 : instrumenter un micro-service Java avec l'agent puis avec le starter</span>
        </li>
        <li>
          <strong class="text-primary">3. Collecteur</strong><br />
          Modes de déploiement, receivers (OTLP, hostmetrics), processors (batch, memory limiter, filter, transform), langage OTTL, connectors, exporters, extensions.<br />
          <span class="text-sm">🧪 Lab 3 : configurer le collecteur, collecter les métriques système et PostgreSQL</span>
        </li>
        <li>
          <strong class="text-primary">4. Grafana</strong><br />
          Datasources, visualisations, dashboards, alerting.<br />
          <span class="text-sm">🧪 Lab 4 : dashboard unifié logs / métriques / traces et alerte p95 déclenchée · exemplars</span>
        </li>
      </ol>
    </div>
    <div class="rounded-4xl bg-tertiary/50 p-6">
      <p class="mb-3 text-sm font-bold uppercase tracking-wide text-secondary">Jour 2 · Les trois signaux en profondeur</p>
      <ol class="space-y-4">
        <li>
          <strong class="text-primary">5. Logs</strong><br />
          Modèle de données, SLF4J/Logback, SDK LogProvider, logs structurés, receivers filelog et syslog.<br />
          <span class="text-sm">🧪 Lab 5 : logs structurés corrélés aux traces dans OpenSearch</span>
        </li>
        <li>
          <strong class="text-primary">6. Métriques</strong><br />
          Modèle de données, Micrometer, jauges / compteurs / histogrammes, SDK MeterProvider, Prometheus, connectors count et spanmetrics.<br />
          <span class="text-sm">🧪 Lab 6 : métriques métier émises, collectées et graphées</span>
        </li>
        <li>
          <strong class="text-primary">7. Traces</strong><br />
          SDK Tracer, contexte et bagage, annotations, échantillonnage head / tail, rate limiting.<br />
          <span class="text-sm">🧪 Lab 7 : trace multi-services et tail sampling</span>
        </li>
        <li>
          <strong class="text-primary">8. Sécurité et conformité</strong><br />
          Données sensibles dans la télémétrie, masquage côté SDK et côté collecteur, RGPD.<br />
          <span class="text-sm">🧪 Lab 8 : masquage PII et anti-fuite</span>
        </li>
        <li>
          <strong class="text-primary">9. Spring (facultatif)</strong> · appender Logback, Micrometer et Micrometer Tracing avec OTLP<br />
          <strong class="text-primary">10. Conclusion</strong> · bilan, évaluation des acquis
        </li>
      </ol>
    </div>
  </div>
</div>

<div class="not-prose mt-16 grid gap-8 md:grid-cols-3">
  <div class="flex flex-col rounded-4xl border border-primary/25 p-8">
    <h2 class="mb-3 text-xl font-bold text-primary">Tarifs</h2>
    <div class="mb-4 rounded-2xl bg-tertiary px-4 py-3">
      <span class="text-3xl font-bold text-primary">1 980 € <span class="text-sm font-normal">HT</span></span><br />
      <span class="text-sm">par personne, session inter-entreprises de <strong>2 jours</strong></span>
    </div>
    <ul class="list-disc space-y-1 pl-5 text-sm">
      <li>650 € HT par personne pour chaque jour optionnel supplémentaire</li>
      <li>Sessions intra-entreprise : sur demande</li>
    </ul>
  </div>
  <div class="rounded-4xl border border-primary/25 p-8">
    <h2 class="mb-3 text-xl font-bold text-primary">Labs en accès libre</h2>
    <p class="mb-4">Les labs de la formation sont publiés sous licence Creative Commons BY-SA : vous pouvez les parcourir avant de vous inscrire, et les rejouer après.</p>
    <a class="border-primary text-primary hover:bg-primary inline-flex items-center rounded border px-8 py-2 duration-500 hover:text-white" href="https://k8s-school.fr/labs/otel">Voir les labs OpenTelemetry</a>
  </div>
  <div class="rounded-4xl border border-primary/25 p-8">
    <h2 class="mb-3 text-xl font-bold text-primary">Méthode et évaluation</h2>
    <ul class="list-disc space-y-1 pl-5">
      <li>Alternance de concepts et d'ateliers pratiques, retours d'expérience terrain du formateur</li>
      <li>Auto-positionnement en amont, évaluation des acquis en fin de session</li>
      <li>Support de cours numérique fourni</li>
    </ul>
  </div>
</div>

<div class="not-prose mt-16 rounded-4xl bg-tertiary px-6 py-12 text-center xl:px-12">
  <h2 class="mb-4 text-3xl font-bold text-primary">Formez votre équipe à OpenTelemetry</h2>
  <p class="mx-auto mb-8 max-w-2xl">Sessions inter-entreprises, ou intra-entreprise dans vos locaux ou à distance. Le programme s'adapte à votre stack (langages, backends d'observabilité).</p>
  <div class="flex flex-col items-center justify-center gap-4 xl:flex-row">
    <a class="bg-primary hover:bg-primary/90 rounded px-8 py-2 text-white duration-500" href="https://docs.google.com/forms/d/e/1FAIpQLSdReUtBAMQWI_CuKbSLtEWaIVSlEQKaOMSEnlstjtvS67UnGw/viewform?usp=sf_link">S'inscrire</a>
    <a class="border-primary text-primary hover:bg-primary rounded border px-8 py-2 duration-500 hover:text-white" href="/contact/">Nous contacter</a>
  </div>
</div>

<script type="application/ld+json">{
  "@context": "https://schema.org",
  "@type": "Course",
  "name": "Formation OpenTelemetry",
  "description": "Rendez vos applications observables avec OpenTelemetry : logs, métriques et traces corrélés, du SDK Java au collecteur et à Grafana.",
  "url": "https://k8s-school.fr/formations-kubernetes/opentelemetry/",
  "provider": {"@type": "Organization", "name": "K8s School", "url": "https://k8s-school.fr/"},
  "hasCourseInstance": {"@type": "CourseInstance", "courseMode": ["onsite", "online"], "courseWorkload": "PT14H"},
  "offers": {"@type": "Offer", "priceCurrency": "EUR", "price": "1980", "category": "Session inter-entreprises, par personne, HT"}
}</script>
