{{- define "lib-chart.secrets" -}}

apiVersion: v1
kind: Secret
metadata:
  name: {{ include "lib-chart.fullname" . }}-secret
  namespace: {{ .Values.global.namespace | quote }}
type: Opaque
data:
  {{- range $key, $value := .Values.secrets }}
  {{ $key }}: {{ $value | b64enc | quote }}
  {{- end }}
  
{{- end -}} 
