# checkmk_kubernetes_collector
## Fix for kubernetes collector bug
* See https://github.com/Checkmk/checkmk_kube_agent/pull/15
* See https://forum.checkmk.com/t/crashbackloopoff-for-node-collector-machine-sections-on-large-nodes/35531/8

 ## Notes
 * Build is hardcoded to 1.51 in [https://github.com/kbase-infra/condor_metrics/edit/main/.github/workflows/build.yaml](https://github.com/kbase-infra/checkmk_kubernetes_collector/blob/main/.github/workflows/build.yaml)https://github.com/kbase-infra/checkmk_kubernetes_collector/blob/main/.github/workflows/build.yaml
 * Specify this in the helm chart with

```
  containerMetricsCollector:
    image:
      pullPolicy: IfNotPresent
      repository: ghcr.io/kbase-infra/checkmk_kubernetes_collector
```
