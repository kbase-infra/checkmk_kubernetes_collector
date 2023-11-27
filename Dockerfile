FROM docker.io/checkmk/kubernetes-collector:1.5.1
COPY ./send_metrics.py /usr/local/lib/python3.10/site-packages/checkmk_kube_agent/send_metrics.py
