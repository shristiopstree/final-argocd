{{- define "lib-chart.configmap" -}}

apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ include "lib-chart.fullname" . }}-config
  namespace: {{ .Values.global.namespace | quote }} 
data:
  {{- range $key, $value := .Values.config }}
  {{ $key }}: {{ $value | quote }}
  {{- end }}

{{- end -}} 