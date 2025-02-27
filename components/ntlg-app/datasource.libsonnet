local p = import '../../params.libsonnet';
local params = p.components.ntlgApp;

{
  objects: import 'data://helm/helm-ntlg-app?config-from=helmConfig',
  config: {
    options: {
      repo: 'helm-ntlg-app',
      createNamespace: true,
    },
    values: {
      replicaCount: params.replicas,
    },
  },
}
