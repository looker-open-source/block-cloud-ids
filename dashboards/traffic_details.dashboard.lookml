- dashboard: google_cloud_ids__traffic_details
  title: Google Cloud IDS - Traffic Details
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Qwf2cxEXCmmJZK6KrgMfnd
  elements:
  - title: Google Cloud IDS - Traffic Details
    name: Google Cloud IDS - Traffic Details
    model: cloud_ids
    explore: ids_googleapis_com_traffic
    type: looker_grid
    fields: [ids_googleapis_com_traffic.timestamp_time, ids_googleapis_com_traffic.json_payload__ip_protocol,
      ids_googleapis_com_traffic.json_payload__destination_ip_address, ids_googleapis_com_traffic.json_payload__destination_port,
      ids_googleapis_com_traffic.json_payload__source_ip_address, ids_googleapis_com_traffic.json_payload__source_port,
      ids_googleapis_com_traffic.json_payload__application, ids_googleapis_com_traffic.total_bytes,
      ids_googleapis_com_traffic.total_packets]
    sorts: [ids_googleapis_com_traffic.timestamp_time desc]
    limit: 500
    filter_expression: contains(${ids_googleapis_com_traffic.json_payload__application},"unknown")
      OR contains(${ids_googleapis_com_traffic.json_payload__application},"p2p") OR
      contains(${ids_googleapis_com_traffic.json_payload__application},"ipsec") OR
      contains(${ids_googleapis_com_traffic.json_payload__application},"vpn") OR contains(${ids_googleapis_com_traffic.json_payload__application},"insufficient")
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    column_order: ["$$$_row_numbers_$$$", ids_googleapis_com_traffic.timestamp_time,
      ids_googleapis_com_traffic.json_payload__ip_protocol, ids_googleapis_com_traffic.json_payload__destination_ip_address,
      ids_googleapis_com_traffic.json_payload__destination_port, ids_googleapis_com_traffic.json_payload__source_ip_address,
      ids_googleapis_com_traffic.json_payload__source_port, ids_googleapis_com_traffic.json_payload__application,
      ids_googleapis_com_traffic.total_bytes, ids_googleapis_com_traffic.total_packets]
    title_hidden: true
    listen:
      Timestamp: ids_googleapis_com_traffic.timestamp_time
      Source IP Address: ids_googleapis_com_traffic.json_payload__source_ip_address
      IP Protocol: ids_googleapis_com_traffic.json_payload__ip_protocol
      Destination IP Address: ids_googleapis_com_traffic.json_payload__destination_ip_address
      Destination Port: ids_googleapis_com_traffic.json_payload__destination_port
      Source Port: ids_googleapis_com_traffic.json_payload__source_port
      Application: ids_googleapis_com_traffic.json_payload__application
    row: 0
    col: 0
    width: 24
    height: 12
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
    explore: ids_googleapis_com_traffic
    listens_to_filters: []
    field: ids_googleapis_com_traffic.timestamp_time
  - name: IP Protocol
    title: IP Protocol
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cloud_ids
    explore: ids_googleapis_com_traffic
    listens_to_filters: []
    field: ids_googleapis_com_traffic.json_payload__ip_protocol
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
    explore: ids_googleapis_com_traffic
    listens_to_filters: []
    field: ids_googleapis_com_traffic.json_payload__destination_ip_address
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
    explore: ids_googleapis_com_traffic
    listens_to_filters: []
    field: ids_googleapis_com_traffic.json_payload__destination_port
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
    explore: ids_googleapis_com_traffic
    listens_to_filters: []
    field: ids_googleapis_com_traffic.json_payload__source_ip_address
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
    explore: ids_googleapis_com_traffic
    listens_to_filters: []
    field: ids_googleapis_com_traffic.json_payload__source_port
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
    explore: ids_googleapis_com_traffic
    listens_to_filters: []
    field: ids_googleapis_com_traffic.json_payload__application
