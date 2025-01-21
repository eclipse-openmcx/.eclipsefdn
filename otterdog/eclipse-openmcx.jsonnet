local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('automotive.openmcx', 'eclipse-openmcx') {
  settings+: {
    description: "",
    name: "Eclipse OpenMCx™",
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('openmcx') {
      allow_merge_commit: true,
      allow_update_branch: false,
      code_scanning_default_languages+: [
        "c-cpp",
        "python"
      ],
      code_scanning_default_setup_enabled: true,
      delete_branch_on_merge: false,
      description: "openmcx",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
  ],
}
