# Google Cloud IDS

## Why use the Google Cloud IDS Looker Block?
The Cloud IDS block allows you to export Threat and Traffic security data related to GCE and GKE Workloads, from Google Cloud IDS and analyze it in Looker. The flexibility of the data model gives you the ability to perform security monitoring and analysis of your Google Cloud resources protected by Cloud IDS.

## Block Structure
Included in the Block:
* Top Traffic (by Applications)
* Top Threats
* Top files exfiltrated
* Top CVE detected
* Attackers and Target Data

For more information on the Block structure and customization, refer to Looker Marketplace Documentation

## Technical installation

### Pre-requisites

Cloud IDS is a security service that is running natively on Google Cloud to inspect Threats and Traffic. IDS logs are created inside Cloud Logging.

For the Block to work, you will need to :
* Create a BigQuery Dataset
* Create a Service Account for Looker to access the Dataset
* Assign IAM role “BigQuery Data Viewer” & “BigQuery Job User” to the Service Account for this project
* Create a Log router sink in Cloud Logging, where Sink destination is the BigQuery Dataset that you created and using this filter to include Cloud IDS from the GLB logs:
```logName=("projects/$PROJECT_ID/logs/ids.googleapis.com%2Fthreat" OR "projects/$PROJECT_ID/logs/ids.googleapis.com%2Ftraffic")```


You might need to add additional policy in your Log sink filter to capture all of your Cloud IDS Data.
See more documentation at: [https://cloud.google.com/logging/docs/export/configure_export_v2](https://cloud.google.com/logging/docs/export/configure_export_v2)

### Installation steps
Install this block from the marketplace

#### Required installation parameters:
**CONNECTION_NAME:** name of the database connection for the Cloud IDS dataset in BigQuery
**DATASET_NAME:** the [project.dataset] in BigQuery where Cloud IDS data is stored

Access the block from Browse - Applications & Tools - Google Cloud IDS Block or the LookML dashboards folder (/folders/lookml). You can customize these dashboards by copying them into one of your instance folders.

### What if I find an error? Suggestions for improvements?
Great! Blocks were designed for continuous improvement through the help of the entire Google Cloud community and we'd love your input. To report an error or improvement recommendation, please reach out to us via email to google-cloud-security-dashboards@google.com to submit a request. Please be as detailed as possible in your explanation and we'll address it as quickly as we can.
