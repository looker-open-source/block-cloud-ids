view: ids_googleapis_com_traffic {
  view_label: "Traffic"
  sql_table_name: `@{SCHEMA}.@{TRAFFIC_TABLE}` ;;

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

  dimension: json_payload__application {
    type: string
    sql: ${TABLE}.jsonPayload.application ;;
    group_label: "JSON Payload"
    group_item_label: "Application"
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

  dimension: json_payload__elapsed_time {
    type: number
    sql: cast(${TABLE}.jsonPayload.elapsed_time as numeric) ;;
    group_label: "JSON Payload"
    group_item_label: "Elapsed Time"
  }

  dimension: json_payload__ip_protocol {
    type: string
    sql: ${TABLE}.jsonPayload.ip_protocol ;;
    group_label: "JSON Payload"
    group_item_label: "IP Protocol"
  }

  dimension: json_payload__network {
    type: string
    sql: ${TABLE}.jsonPayload.network ;;
    group_label: "JSON Payload"
    group_item_label: "Network"
  }

  dimension: json_payload__repeat_count {
    type: number
    sql: cast(${TABLE}.jsonPayload.repeat_count as numeric) ;;
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

  dimension: json_payload__start_time {
    type: string
    sql: ${TABLE}.jsonPayload.start_time ;;
    group_label: "JSON Payload"
    group_item_label: "Start Time"
  }

  dimension: json_payload__total_bytes {
    type: number
    sql: cast(${TABLE}.jsonPayload.total_bytes as numeric) ;;
    group_label: "JSON Payload"
    group_item_label: "Total Bytes"
  }

  dimension: json_payload__total_packets {
    type: number
    sql: cast(${TABLE}.jsonPayload.total_packets as numeric) ;;
    group_label: "JSON Payload"
    group_item_label: "Total Packets"
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

######################## total_bytes ########################

  measure: total_bytes {
    hidden: no
    type: sum
    sql: ${json_payload__total_bytes} ;;
  }

  measure: average_total_bytes {
    hidden: no
    type: average
    sql: ${json_payload__total_bytes} ;;
  }

  measure: maximum_total_bytes {
    hidden: no
    type: max
    sql: ${json_payload__total_bytes} ;;
  }

  measure: minimum_total_bytes {
    hidden: yes
    type: min
    sql: ${json_payload__total_bytes} ;;
  }

######################## elapsed_time ########################

  measure: total_elapsed_time {
    hidden: no
    type: sum
    sql: ${json_payload__elapsed_time} ;;
  }

  measure: average_elapsed_time {
    hidden: no
    type: average
    sql: ${json_payload__elapsed_time} ;;
  }

  measure: maximum_elapsed_time {
    hidden: no
    type: max
    sql: ${json_payload__elapsed_time} ;;
  }

  measure: minimum_elapsed_time {
    hidden: yes
    type: min
    sql: ${json_payload__elapsed_time} ;;
  }

######################## total_packets ########################

  measure: total_packets {
    hidden: no
    type: sum
    sql: ${json_payload__total_packets} ;;
  }

  measure: average_total_packets {
    hidden: no
    type: average
    sql: ${json_payload__total_packets} ;;
  }

  measure: maximum_total_packets {
    hidden: no
    type: max
    sql: ${json_payload__total_packets} ;;
  }

  measure: minimum_total_packets {
    hidden: yes
    type: min
    sql: ${json_payload__total_packets} ;;
  }

######################## repeat_count ########################

  measure: total_repeat_count {
    hidden: yes
    type: sum
    sql: ${json_payload__repeat_count} ;;
  }

  measure: average_repeat_count {
    hidden: yes
    type: average
    sql: ${json_payload__repeat_count} ;;
  }

  measure: maximum_repeat_count {
    hidden: yes
    type: max
    sql: ${json_payload__repeat_count} ;;
  }

  measure: minimum_repeat_count {
    hidden: yes
    type: min
    sql: ${json_payload__repeat_count} ;;
  }









######################## traffic ########################

  measure: count_traffic {
    hidden: yes
    type: count
    drill_fields: [detail_traffic*]
  }

  measure: total_traffic_bytes {
    hidden: yes
    sql: ${json_payload__total_bytes} ;;
    type: sum
    drill_fields: [detail_traffic*]
  }

  measure: total_traffic_packets {
    hidden: yes
    sql: ${json_payload__total_packets} ;;
    type: sum
    drill_fields: [detail_traffic*]
  }

  set: detail_traffic {
    fields: [
      timestamp_time,
      json_payload__source_ip_address,
      json_payload__ip_protocol,
      json_payload__destination_ip_address,
      json_payload__destination_port,
      json_payload__ip_protocol,
      json_payload__source_port,
      json_payload__destination_ip_address,
      json_payload__destination_port,
      json_payload__application,
      total_bytes,
      total_packets
    ]
  }

######################## applications ########################

  measure: count_distinct_applications {
    hidden: yes
    type: count_distinct
    sql: ${json_payload__application} ;;
    drill_fields: [detail_applications_total_bytes*]
    link: {
      label: "Show Applications by Date"
      url: "{{link}}&pivots=ids_googleapis_com_traffic.json_payload__application"
    }
  }

  measure: total_applications_total_bytes {
    hidden: yes
    type: sum
    sql: ${json_payload__total_bytes} ;;
    drill_fields: [detail_applications_total_bytes*]
    link: {
      label: "Show Applications by Date"
      url: "{{link}}&pivots=ids_googleapis_com_traffic.json_payload__application"
    }
  }

  measure: total_applications_total_bytes_over_time {
    hidden: yes
    type: sum
    sql: ${json_payload__total_bytes} ;;
    drill_fields: [detail_traffic*]
    link: {
      label: "Show Applications by Time"
      url: "{{link}}&pivots=ids_googleapis_com_traffic.json_payload__application"
    }
  }

  measure: total_applications_total_packets {
    hidden: yes
    type: sum
    sql: ${json_payload__total_packets} ;;
    drill_fields: [detail_applications_total_packets*]
    link: {
      label: "Show Applications by Date"
      url: "{{link}}&pivots=ids_googleapis_com_traffic.json_payload__application"
    }
  }

  set: detail_applications_total_bytes {
    fields: [
      json_payload__application,
      timestamp_date,
      total_traffic_bytes
    ]
  }

  set: detail_applications_total_packets {
    fields: [
      json_payload__application,
      timestamp_date,
      total_traffic_packets
    ]
  }

######################## potential_evasions ########################

  measure: count_potential_evasions {
    hidden: yes
    type: count
    drill_fields: [detail_applications_total_bytes*]
    link: {
      label: "Show Potential Evasion by Date"
      url: "{{link}}&pivots=ids_googleapis_com_traffic.json_payload__application"
    }
  }

  measure: total_potential_evasions_total_bytes {
    hidden: yes
    type: sum
    sql: ${json_payload__total_bytes} ;;
    drill_fields: [detail_applications_total_bytes*]
    link: {
      label: "Show Potential Evasions by Date"
      url: "{{link}}&pivots=ids_googleapis_com_traffic.json_payload__application"
    }
  }

######################## source_ip_addresses ########################

  measure: count_distinct_source_ip_addresses {
    hidden: yes
    type: count_distinct
    sql: ${json_payload__source_ip_address} ;;
    drill_fields: [detail_source_ip_addresses*]
    link: {
      label: "Show Source IP Addresses by Date"
      url: "{{link}}&pivots=ids_googleapis_com_traffic.json_payload__source_ip_address"
    }
  }

  set: detail_source_ip_addresses {
    fields: [
      json_payload__source_ip_address,
      timestamp_date,
      count_traffic
    ]
  }

######################## destination_ip_addresses ########################

  measure: count_distinct_destination_ip_addresses {
    hidden: yes
    type: count_distinct
    sql: ${json_payload__destination_ip_address} ;;
    drill_fields: [detail_destination_ip_addresses*]
    link: {
      label: "Show Destination IP Addresses by Date"
      url: "{{link}}&pivots=ids_googleapis_com_traffic.json_payload__destination_ip_address"
    }
  }

  set: detail_destination_ip_addresses {
    fields: [
      json_payload__destination_ip_address,
      timestamp_date,
      count_traffic
    ]
  }

######################## network ########################

  measure: total_network_total_bytes {
    hidden: yes
    type: sum
    sql: ${json_payload__total_bytes} ;;
    drill_fields: [detail_network_total_bytes*]
    link: {
      label: "Show Network by Date"
      url: "{{link}}&pivots=ids_googleapis_com_traffic.json_payload__network"
    }
  }

  set: detail_network_total_bytes {
    fields: [
      json_payload__network,
      timestamp_date,
      total_traffic_bytes
    ]
  }

}
