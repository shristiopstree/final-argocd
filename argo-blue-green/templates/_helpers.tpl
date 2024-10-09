
{{- define "argo-bluegreen.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate labels for the application
*/}}
{{- define "argo-bluegreen.labels" -}}
app: {{ include "argo-bluegreen.fullname" . }}
release: {{ .Release.Name }}
{{- end -}}

{{/*
Generate selector labels
*/}}
{{- define "argo-bluegreen.selectorLabels" -}}
app: {{ include "argo-bluegreen.fullname" . }}
{{- end -}}
