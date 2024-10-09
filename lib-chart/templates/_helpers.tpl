{{- define "lib-chart.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "lib-chart.labels" -}}
app: {{ include "lib-chart.fullname" . }}
{{- end -}}