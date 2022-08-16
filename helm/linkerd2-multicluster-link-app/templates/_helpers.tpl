{{/*
Create the name of the service account to use
*/}}
{{- define "linkerd-service-mirror.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (printf "linkerd-service-mirror-%s" (.Values.target.name | default .Values.clusterID) | trunc 63 | trimSuffix "-") .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
