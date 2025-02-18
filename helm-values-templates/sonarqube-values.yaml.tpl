ingress:
  enabled: true
  hosts:
    - name: sonarqube.${public_lb_ip}.nip.io
  ingressClassName: nginx
  annotations:
    cert-manager.io/cluster-issuer: "le-clusterissuer"

monitoringPasscode: "define_it"
edition: "developer"