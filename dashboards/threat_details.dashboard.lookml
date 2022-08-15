- dashboard: google_cloud_ids__threat_details
  title: Google Cloud IDS - Threat Details
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: dplar7LmE1FMFTWpN5rlTi
  elements:
  - title: Threat Details
    name: Threat Details
    model: cloud_ids
    explore: ids_googleapis_com_threat
    type: looker_grid
    fields: [ids_googleapis_com_threat.timestamp_time, ids_googleapis_com_threat.json_payload__alert_severity,
      ids_googleapis_com_threat.json_payload__cves_concatenated, ids_googleapis_com_threat.json_payload__name,
      ids_googleapis_com_threat.json_payload__type, ids_googleapis_com_threat.json_payload__source_ip_address,
      ids_googleapis_com_threat.json_payload__source_port, ids_googleapis_com_threat.json_payload__destination_ip_address,
      ids_googleapis_com_threat.json_payload__destination_port, ids_googleapis_com_threat.json_payload__uri_or_filename,
      ids_googleapis_com_threat.json_payload__application, ids_googleapis_com_threat.count]
    sorts: [ids_googleapis_com_threat.timestamp_time desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      ids_googleapis_com_threat.json_payload__alert_severity: Alert Severity
      ids_googleapis_com_threat.timestamp_time: Timestamp
      ids_googleapis_com_threat.json_payload__cves_concatenated: CVEs
      ids_googleapis_com_threat.json_payload__name: Name
      ids_googleapis_com_threat.json_payload__type: Type
      ids_googleapis_com_threat.json_payload__source_ip_address: Source IP Address
      ids_googleapis_com_threat.json_payload__source_port: Source Port
      ids_googleapis_com_threat.json_payload__destination_ip_address: Destination
        IP Address
      ids_googleapis_com_threat.json_payload__destination_port: Destination Port
      ids_googleapis_com_threat.json_payload__uri_or_filename: URI or Filename
      ids_googleapis_com_threat.json_payload__application: Application
      ids_googleapis_com_threat.count: Count of Threats
    series_column_widths:
      ids_googleapis_com_threat.json_payload__cves_concatenated: 153
      ids_googleapis_com_threat.timestamp_time: 143
    series_cell_visualizations:
      ids_googleapis_com_threat.count:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    title_hidden: true
    listen:
      Alert Severity: ids_googleapis_com_threat.json_payload__alert_severity
      Payload Name: ids_googleapis_com_threat.json_payload__name
      Payload Type: ids_googleapis_com_threat.json_payload__type
      Source IP Address: ids_googleapis_com_threat.json_payload__source_ip_address
      Source Port: ids_googleapis_com_threat.json_payload__source_port
      URI or Filename: ids_googleapis_com_threat.json_payload__uri_or_filename
      Destination IP Address: ids_googleapis_com_threat.json_payload__destination_ip_address
      Destination Port: ids_googleapis_com_threat.json_payload__destination_port
      CVEs: ids_googleapis_com_threat.json_payload__cves_concatenated
      Application: ids_googleapis_com_threat.json_payload__application
      Timestamp: ids_googleapis_com_threat.timestamp_time
    row: 0
    col: 0
    width: 24
    height: 16
  filters:
  - name: Timestamp
    title: Timestamp
    type: field_filter
    default_value: 12 hour
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: cloud_ids
    explore: ids_googleapis_com_threat
    listens_to_filters: []
    field: ids_googleapis_com_threat.timestamp_time
  - name: Alert Severity
    title: Alert Severity
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cloud_ids
    explore: ids_googleapis_com_threat
    listens_to_filters: []
    field: ids_googleapis_com_threat.json_payload__alert_severity
  - name: CVEs
    title: CVEs
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: cloud_ids
    explore: ids_googleapis_com_threat
    listens_to_filters: []
    field: ids_googleapis_com_threat.json_payload__cves_concatenated
  - name: Payload Name
    title: Payload Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cloud_ids
    explore: ids_googleapis_com_threat
    listens_to_filters: []
    field: ids_googleapis_com_threat.json_payload__name
  - name: Payload Type
    title: Payload Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cloud_ids
    explore: ids_googleapis_com_threat
    listens_to_filters: []
    field: ids_googleapis_com_threat.json_payload__type
  - name: Source IP Address
    title: Source IP Address
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cloud_ids
    explore: ids_googleapis_com_threat
    listens_to_filters: []
    field: ids_googleapis_com_threat.json_payload__source_ip_address
  - name: Source Port
    title: Source Port
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cloud_ids
    explore: ids_googleapis_com_threat
    listens_to_filters: []
    field: ids_googleapis_com_threat.json_payload__source_port
  - name: Destination IP Address
    title: Destination IP Address
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cloud_ids
    explore: ids_googleapis_com_threat
    listens_to_filters: []
    field: ids_googleapis_com_threat.json_payload__destination_ip_address
  - name: Destination Port
    title: Destination Port
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cloud_ids
    explore: ids_googleapis_com_threat
    listens_to_filters: []
    field: ids_googleapis_com_threat.json_payload__destination_port
  - name: URI or Filename
    title: URI or Filename
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cloud_ids
    explore: ids_googleapis_com_threat
    listens_to_filters: []
    field: ids_googleapis_com_threat.json_payload__uri_or_filename
  - name: Application
    title: Application
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cloud_ids
    explore: ids_googleapis_com_threat
    listens_to_filters: []
    field: ids_googleapis_com_threat.json_payload__application
