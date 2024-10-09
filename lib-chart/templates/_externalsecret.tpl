{{- define "lib-chart.externalsecret" -}}

apiVersion: kubernetes-client.io/v1
kind: ExternalSecret
metadata:
  name: {{ include "lib-chart.fullname" . }}-external-secret
  namespace: {{ .Values.global.namespace | quote }}
spec:
  backendType: secretsManager
  data:
    {{- range $key, $value := .Values.secrets }}
    - key: {{ $value.key }}         
      name: {{ $key }}               
    {{- end }}

{{- end -}} 