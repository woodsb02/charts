{{/* Define the configmap */}}
{{- define "blocky.configmap" -}}
---
apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ include "common.names.fullname" . }}-config
  labels:
    {{- include "common.labels" . | nindent 4 }}
data:
  config.yml: |
    {{- .Values.config | nindent 4 }}
{{- end -}}
