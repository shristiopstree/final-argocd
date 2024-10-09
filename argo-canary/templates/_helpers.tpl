
{{- define "argo-canary.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate labels for the application
*/}}
{{- define "argo-canary.labels" -}}
app: {{ include "argo-canary.fullname" . }}
release: {{ .Release.Name }}
{{- end -}}

{{/*
Generate selector labels
*/}}
{{- define "argo-canary.selectorLabels" -}}
app: {{ include "argo-canary.fullname" . }}
{{- end -}}
