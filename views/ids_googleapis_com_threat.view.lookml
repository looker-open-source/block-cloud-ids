view: ids_googleapis_com_threat {
  view_label: "Threats"
  sql_table_name: `@{SCHEMA}.@{THREAT_TABLE}` ;;

  dimension: http_request__cache_fill_bytes {
    type: number
    sql: ${TABLE}.httpRequest.cacheFillBytes ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Fill Bytes"
  }

  dimension: http_request__cache_hit {
    type: yesno
    sql: ${TABLE}.httpRequest.cacheHit ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Hit"
  }

  dimension: http_request__cache_lookup {
    type: yesno
    sql: ${TABLE}.httpRequest.cacheLookup ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Lookup"
  }

  dimension: http_request__cache_validated_with_origin_server {
    type: yesno
    sql: ${TABLE}.httpRequest.cacheValidatedWithOriginServer ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Validated with Origin Server"
  }

  dimension: http_request__protocol {
    type: string
    sql: ${TABLE}.httpRequest.protocol ;;
    group_label: "HTTP Request"
    group_item_label: "Protocol"
  }

  dimension: http_request__referer {
    type: string
    sql: ${TABLE}.httpRequest.referer ;;
    group_label: "HTTP Request"
    group_item_label: "Referer"
  }

  dimension: http_request__remote_ip {
    type: string
    sql: ${TABLE}.httpRequest.remoteIp ;;
    group_label: "HTTP Request"
    group_item_label: "Remote IP"
  }

  dimension: http_request__request_method {
    type: string
    sql: ${TABLE}.httpRequest.requestMethod ;;
    group_label: "HTTP Request"
    group_item_label: "Request Method"
  }

  dimension: http_request__request_size {
    type: number
    sql: ${TABLE}.httpRequest.requestSize ;;
    group_label: "HTTP Request"
    group_item_label: "Request Size"
  }

  dimension: http_request__request_url {
    type: string
    sql: ${TABLE}.httpRequest.requestUrl ;;
    group_label: "HTTP Request"
    group_item_label: "Request URL"
  }

  dimension: http_request__response_size {
    type: number
    sql: ${TABLE}.httpRequest.responseSize ;;
    group_label: "HTTP Request"
    group_item_label: "Response Size"
  }

  dimension: http_request__server_ip {
    type: string
    sql: ${TABLE}.httpRequest.serverIp ;;
    group_label: "HTTP Request"
    group_item_label: "Server IP"
  }

  dimension: http_request__status {
    type: number
    sql: ${TABLE}.httpRequest.status ;;
    group_label: "HTTP Request"
    group_item_label: "Status"
  }

  dimension: http_request__user_agent {
    type: string
    sql: ${TABLE}.httpRequest.userAgent ;;
    group_label: "HTTP Request"
    group_item_label: "User Agent"
  }

  dimension: insert_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.insertId ;;
  }

  dimension: json_payload__alert_severity {
    type: string
    sql: ${TABLE}.jsonPayload.alert_severity ;;
    group_label: "JSON Payload"
    group_item_label: "Alert Severity"
  }

  dimension: json_payload__alert_time {
    type: string
    sql: ${TABLE}.jsonPayload.alert_time) ;;
    group_label: "JSON Payload"
    group_item_label: "Alert Time"
  }

  dimension: json_payload__application {
    type: string
    sql: ${TABLE}.jsonPayload.application ;;
    group_label: "JSON Payload"
    group_item_label: "Application"
  }

  dimension: json_payload__category {
    type: string
    sql: ${TABLE}.jsonPayload.category ;;
    group_label: "JSON Payload"
    group_item_label: "Category"
  }

  dimension: json_payload__cves {
    hidden: yes
    sql: ${TABLE}.jsonPayload.cves ;;
    group_label: "JSON Payload"
    group_item_label: "Cves"
  }

  dimension: json_payload__cves_concatenated {
    hidden: yes
    sql: ARRAY_TO_STRING(${json_payload__cves}, ', ') ;;
    group_label: "JSON Payload"
    group_item_label: "CVEs (Concatenated)"
  }

  dimension: json_payload__destination_ip_address {
    type: string
    sql: ${TABLE}.jsonPayload.destination_ip_address ;;
    group_label: "JSON Payload"
    group_item_label: "Destination IP Address"
  }

  dimension: json_payload__destination_port {
    type: string
    sql: ${TABLE}.jsonPayload.destination_port ;;
    group_label: "JSON Payload"
    group_item_label: "Destination Port"
  }

  dimension: json_payload__details {
    type: string
    sql: ${TABLE}.jsonPayload.details ;;
    group_label: "JSON Payload"
    group_item_label: "Details"
  }

  dimension: json_payload__direction {
    type: string
    sql: ${TABLE}.jsonPayload.direction ;;
    group_label: "JSON Payload"
    group_item_label: "Direction"
  }

  dimension: json_payload__ip_protocol {
    type: string
    sql: ${TABLE}.jsonPayload.ip_protocol ;;
    group_label: "JSON Payload"
    group_item_label: "IP Protocol"
  }

  dimension: json_payload__name {
    type: string
    sql: ${TABLE}.jsonPayload.name ;;
    group_label: "JSON Payload"
    group_item_label: "Name"
  }

  dimension: json_payload__network {
    type: string
    sql: ${TABLE}.jsonPayload.network ;;
    group_label: "JSON Payload"
    group_item_label: "Network"
  }

  dimension: json_payload__repeat_count {
    type: string
    sql: ${TABLE}.jsonPayload.repeat_count ;;
    group_label: "JSON Payload"
    group_item_label: "Repeat Count"
  }

  dimension: json_payload__session_id {
    type: string
    sql: ${TABLE}.jsonPayload.session_id ;;
    group_label: "JSON Payload"
    group_item_label: "Session ID"
  }

  dimension: json_payload__source_ip_address {
    type: string
    sql: ${TABLE}.jsonPayload.source_ip_address ;;
    group_label: "JSON Payload"
    group_item_label: "Source IP Address"
  }

  dimension: json_payload__source_port {
    type: string
    sql: ${TABLE}.jsonPayload.source_port ;;
    group_label: "JSON Payload"
    group_item_label: "Source Port"
  }

  dimension: json_payload__threat_id {
    type: string
    sql: ${TABLE}.jsonPayload.threat_id ;;
    group_label: "JSON Payload"
    group_item_label: "Threat ID"
  }

  dimension: json_payload__type {
    type: string
    sql: ${TABLE}.jsonPayload.type ;;
    group_label: "JSON Payload"
    group_item_label: "Type"
  }

  dimension: json_payload__uri_or_filename {
    type: string
    sql: ${TABLE}.jsonPayload.uri_or_filename ;;
    group_label: "JSON Payload"
    group_item_label: "URI or Filename"
  }

  dimension: log_name {
    type: string
    sql: ${TABLE}.logName ;;
  }

  dimension: operation__first {
    type: yesno
    sql: ${TABLE}.operation.first ;;
    group_label: "Operation"
    group_item_label: "First"
  }

  dimension: operation__id {
    type: string
    sql: ${TABLE}.operation.id ;;
    group_label: "Operation"
    group_item_label: "ID"
  }

  dimension: operation__last {
    type: yesno
    sql: ${TABLE}.operation.last ;;
    group_label: "Operation"
    group_item_label: "Last"
  }

  dimension: operation__producer {
    type: string
    sql: ${TABLE}.operation.producer ;;
    group_label: "Operation"
    group_item_label: "Producer"
  }

  dimension_group: receive_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.receiveTimestamp ;;
  }

  dimension: resource__labels__id {
    type: string
    sql: ${TABLE}.resource.labels.id ;;
    group_label: "Resource Labels"
    group_item_label: "ID"
  }

  dimension: resource__labels__location {
    type: string
    sql: ${TABLE}.resource.labels.location ;;
    group_label: "Resource Labels"
    group_item_label: "Location"
  }

  dimension: resource__labels__resource_container {
    type: string
    sql: ${TABLE}.resource.labels.resource_container ;;
    group_label: "Resource Labels"
    group_item_label: "Resource Container"
  }

  dimension: resource__type {
    type: string
    sql: ${TABLE}.resource.type ;;
    group_label: "Resource"
    group_item_label: "Type"
  }

  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
  }

  dimension: source_location__file {
    type: string
    sql: ${TABLE}.sourceLocation.file ;;
    group_label: "Source Location"
    group_item_label: "File"
  }

  dimension: source_location__function {
    type: string
    sql: ${TABLE}.sourceLocation.function ;;
    group_label: "Source Location"
    group_item_label: "Function"
  }

  dimension: source_location__line {
    type: number
    sql: ${TABLE}.sourceLocation.line ;;
    group_label: "Source Location"
    group_item_label: "Line"
  }

  dimension: span_id {
    type: string
    sql: ${TABLE}.spanId ;;
  }

  dimension: text_payload {
    type: string
    sql: ${TABLE}.textPayload ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: trace {
    type: string
    sql: ${TABLE}.trace ;;
  }

  dimension: trace_sampled {
    type: yesno
    sql: ${TABLE}.traceSampled ;;
  }

  measure: count {
    type: count
    }

######################## count_threat ########################

  measure: count_threats {
    hidden: yes
    type: count
    drill_fields: [detail_threat*]
  }

  set: detail_threat {
    fields: [
      timestamp_time,
      json_payload__alert_severity,
      json_payload__cves_concatenated,
      json_payload__name,
      json_payload__type,
      json_payload__source_ip_address,
      json_payload__source_port,
      json_payload__destination_ip_address,
      json_payload__destination_port,
      json_payload__uri_or_filename,
      json_payload__application,
      count
    ]
  }

######################## threat_id ########################

  measure: count_threat_ids {
    hidden: yes
    type: count
    drill_fields: [detail_threat_ids*]
    link: {
      label: "Show Threats by Date"
      url: "{{link}}&pivots=ids_googleapis_com_threat.json_payload__threat_id"
    }
  }

  set: detail_threat_ids {
    fields: [
      json_payload__threat_id,
      timestamp_date,
      count_threats
    ]
  }

######################## uri_or_filenames ########################

  measure: count_uri_or_filenames {
    hidden: yes
    type: count
    drill_fields: [detail_uri_or_filenames*]
    link: {
      label: "Show URI or Filename by Date"
      url: "{{link}}&pivots=ids_googleapis_com_threat.json_payload__uri_or_filename"
    }
  }

  measure: count_distinct_uri_or_filenames {
    type: count_distinct
    hidden: yes
    sql: ${json_payload__uri_or_filename} ;;
    drill_fields: [detail_uri_or_filenames*]
    link: {
      label: "Show URIs or Filenames by Date"
      url: "{{link}}&pivots=ids_googleapis_com_threat.json_payload__uri_or_filename"
    }
  }

  set: detail_uri_or_filenames {
    fields: [
      json_payload__uri_or_filename,
      timestamp_date,
      count_threats
    ]
  }

######################## payload_names ########################

  measure: count_payload_names {
    hidden: yes
    type: count
    drill_fields: [detail_payload_names*]
    link: {
      label: "Show Payload Names by Date"
      url: "{{link}}&pivots=ids_googleapis_com_threat.json_payload__name"
    }
  }

  measure: count_distinct_payload_names {
    hidden: yes
    type: count_distinct
    sql: ${json_payload__name} ;;
    drill_fields: [detail_payload_names*]
    link: {
      label: "Show Payload Names by Date"
      url: "{{link}}&pivots=ids_googleapis_com_threat.json_payload__name"
    }
  }

  set: detail_payload_names {
    fields: [
      json_payload__name,
      timestamp_date,
      count_threats
    ]
  }

######################## alert_severity ########################

  measure: count_alert_severity {
    hidden: yes
    type: count
    drill_fields: [detail_alert_severity*]
    link: {
      label: "Show Alert Severity by Date"
      url: "{{link}}&pivots=ids_googleapis_com_threat.json_payload__alert_severity"
    }
  }

  set: detail_alert_severity {
    fields: [
      json_payload__alert_severity,
      timestamp_date,
      count_threats
    ]
  }

######################## name ########################

  measure: count_names {
    hidden: yes
    type: count
    drill_fields: [detail_threat*]
 }

}










view: ids_googleapis_com_threat__json_payload__cves {
  view_label: "Threats"

  dimension: ids_googleapis_com_threat__json_payload__cves {
    type: string
    sql: ids_googleapis_com_threat__json_payload__cves ;;
    group_label: "JSON Payload"
    label: "CVEs"
    description: "Common Vulnerabilities and Exposures"
  }

######################## cves ########################

  measure: count_cves {
    hidden: yes
    type: count
    label: "Count CVEs"
    drill_fields: [detail_cves*]
    link: {
      label: "Show CVEs by Date"
      url: "{{link}}&pivots=ids_googleapis_com_threat__json_payload__cves.ids_googleapis_com_threat__json_payload__cves"
    }
  }

  measure: count_distinct_cves {
    hidden: yes
    type: count_distinct
    sql: ${ids_googleapis_com_threat__json_payload__cves} ;;
    label: "Count Distinct CVEs"
    drill_fields: [detail_cves*]
    link: {
      label: "Show CVEs by Date"
      url: "{{link}}&pivots=ids_googleapis_com_threat__json_payload__cves.ids_googleapis_com_threat__json_payload__cves"
    }
  }

  set: detail_cves {
    fields: [
      ids_googleapis_com_threat__json_payload__cves,
      ids_googleapis_com_threat.timestamp_date,
      ids_googleapis_com_threat.count_threats
    ]
  }

}
