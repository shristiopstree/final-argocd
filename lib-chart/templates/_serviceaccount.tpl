{{- define "lib-chart.serviceaccount" -}}

apiVersion: v1
kind: ServiceAccount
metadata:
  name: {{ include "lib-chart.fullname" . }}
  namespace: {{ .Values.global.namespace | quote }}  # This should work fine
  labels:
    {{- include "lib-chart.labels" . | nindent 4 }}  # Ensure "lib-chart.labels" is defined correctly

{{- end -}}  
