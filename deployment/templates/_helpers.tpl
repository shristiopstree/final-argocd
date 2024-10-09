
{{- define "deployment.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate labels for the application
*/}}
{{- define "deployment.labels" -}}
app: {{ include "deployment.fullname" . }}
release: {{ .Release.Name }}
{{- end -}}

{{/*
Generate selector labels
*/}}
{{- define "deployment.selectorLabels" -}}
app: {{ include "deployment.fullname" . }}
{{- end -}}
