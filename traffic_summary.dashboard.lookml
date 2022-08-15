- dashboard: traffic_summary
  title: Google Cloud IDS - Traffic Summary
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: DpOYJbgVRgkStAfK7MQnVT
  elements:
  - title: New Tile
    name: New Tile
    model: cloud_ids
    explore: ids_googleapis_com_traffic
    type: single_value
    fields: [ids_googleapis_com_traffic.count_distinct_applications]
    filters:
      ids_googleapis_com_traffic.json_payload__application: "-incomplete"
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Unique Applications
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
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
    listen:
      Timestamp Date: ids_googleapis_com_traffic.timestamp_date
    row: 0
    col: 6
    width: 6
    height: 2
  - title: New Tile
    name: New Tile (2)
    model: cloud_ids
    explore: ids_googleapis_com_traffic
    type: single_value
    fields: [ids_googleapis_com_traffic.count_distinct_source_ip_addresses]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Unique Source IP Addresses
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#079c98",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    series_types: {}
    listen:
      Timestamp Date: ids_googleapis_com_traffic.timestamp_date
    row: 0
    col: 12
    width: 6
    height: 2
  - title: New Tile
    name: New Tile (3)
    model: cloud_ids
    explore: ids_googleapis_com_traffic
    type: single_value
    fields: [ids_googleapis_com_traffic.count_distinct_destination_ip_addresses]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Unique Destination IP Addresses
    value_format: ''
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#9334E6",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Timestamp Date: ids_googleapis_com_traffic.timestamp_date
    row: 0
    col: 18
    width: 6
    height: 2
  - title: New Tile
    name: New Tile (4)
    model: cloud_ids
    explore: ids_googleapis_com_traffic
    type: single_value
    fields: [ids_googleapis_com_traffic.count_potential_evasions]
    limit: 500
    filter_expression: contains(${ids_googleapis_com_traffic.json_payload__application},"unknown")
      OR contains(${ids_googleapis_com_traffic.json_payload__application},"p2p") OR
      contains(${ids_googleapis_com_traffic.json_payload__application},"ipsec") OR
      contains(${ids_googleapis_com_traffic.json_payload__application},"vpn") OR contains(${ids_googleapis_com_traffic.json_payload__application},"insufficient")
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Potential Evasions
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#EA4335",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Timestamp Date: ids_googleapis_com_traffic.timestamp_date
    row: 0
    col: 0
    width: 6
    height: 2
  - title: Traffic by Applications by Date (Bytes)
    name: Traffic by Applications by Date (Bytes)
    model: cloud_ids
    explore: ids_googleapis_com_traffic
    type: looker_area
    fields: [ids_googleapis_com_traffic.timestamp_date, ids_googleapis_com_traffic.json_payload__application,
      ids_googleapis_com_traffic.total_applications_total_bytes_over_time]
    pivots: [ids_googleapis_com_traffic.json_payload__application]
    fill_fields: [ids_googleapis_com_traffic.timestamp_date]
    filters:
      ids_googleapis_com_traffic.json_payload__application: "-incomplete"
    sorts: [ids_googleapis_com_traffic.json_payload__application, ids_googleapis_com_traffic.timestamp_date
        desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: apt-get - ids_googleapis_com_traffic.count_application,
            id: apt-get - ids_googleapis_com_traffic.count_application, name: apt-get},
          {axisId: dns - ids_googleapis_com_traffic.count_application, id: dns - ids_googleapis_com_traffic.count_application,
            name: dns}, {axisId: dns-base - ids_googleapis_com_traffic.count_application,
            id: dns-base - ids_googleapis_com_traffic.count_application, name: dns-base},
          {axisId: facebook-base - ids_googleapis_com_traffic.count_application, id: facebook-base
              - ids_googleapis_com_traffic.count_application, name: facebook-base},
          {axisId: github-base - ids_googleapis_com_traffic.count_application, id: github-base
              - ids_googleapis_com_traffic.count_application, name: github-base},
          {axisId: google-app-engine - ids_googleapis_com_traffic.count_application,
            id: google-app-engine - ids_googleapis_com_traffic.count_application,
            name: google-app-engine}, {axisId: google-base - ids_googleapis_com_traffic.count_application,
            id: google-base - ids_googleapis_com_traffic.count_application, name: google-base},
          {axisId: icmp - ids_googleapis_com_traffic.count_application, id: icmp -
              ids_googleapis_com_traffic.count_application, name: icmp}, {axisId: insufficient-data
              - ids_googleapis_com_traffic.count_application, id: insufficient-data
              - ids_googleapis_com_traffic.count_application, name: insufficient-data},
          {axisId: non-syn-tcp - ids_googleapis_com_traffic.count_application, id: non-syn-tcp
              - ids_googleapis_com_traffic.count_application, name: non-syn-tcp},
          {axisId: ping - ids_googleapis_com_traffic.count_application, id: ping -
              ids_googleapis_com_traffic.count_application, name: ping}, {axisId: ssh
              - ids_googleapis_com_traffic.count_application, id: ssh - ids_googleapis_com_traffic.count_application,
            name: ssh}, {axisId: ssl - ids_googleapis_com_traffic.count_application,
            id: ssl - ids_googleapis_com_traffic.count_application, name: ssl}, {
            axisId: unknown-tcp - ids_googleapis_com_traffic.count_application, id: unknown-tcp
              - ids_googleapis_com_traffic.count_application, name: unknown-tcp},
          {axisId: web-browsing - ids_googleapis_com_traffic.count_application, id: web-browsing
              - ids_googleapis_com_traffic.count_application, name: web-browsing},
          {axisId: youtube-base - ids_googleapis_com_traffic.count_application, id: youtube-base
              - ids_googleapis_com_traffic.count_application, name: youtube-base}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Timestamp Date: ids_googleapis_com_traffic.timestamp_date
    row: 2
    col: 0
    width: 24
    height: 9
  - title: Traffic by Potential Evasion (Bytes)
    name: Traffic by Potential Evasion (Bytes)
    model: cloud_ids
    explore: ids_googleapis_com_traffic
    type: looker_pie
    fields: [ids_googleapis_com_traffic.json_payload__application, ids_googleapis_com_traffic.total_potential_evasions_total_bytes]
    sorts: [ids_googleapis_com_traffic.total_potential_evasions_total_bytes desc]
    limit: 500
    filter_expression: contains(${ids_googleapis_com_traffic.json_payload__application},"unknown")
      OR contains(${ids_googleapis_com_traffic.json_payload__application},"p2p") OR
      contains(${ids_googleapis_com_traffic.json_payload__application},"ipsec") OR
      contains(${ids_googleapis_com_traffic.json_payload__application},"vpn") OR contains(${ids_googleapis_com_traffic.json_payload__application},"insufficient")
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
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
    listen:
      Timestamp Date: ids_googleapis_com_traffic.timestamp_date
    row: 11
    col: 0
    width: 6
    height: 6
  - title: Traffic by Application (Bytes)
    name: Traffic by Application (Bytes)
    model: cloud_ids
    explore: ids_googleapis_com_traffic
    type: looker_pie
    fields: [ids_googleapis_com_traffic.json_payload__application, ids_googleapis_com_traffic.total_applications_total_bytes]
    filters:
      ids_googleapis_com_traffic.json_payload__application: "-incomplete"
    sorts: [ids_googleapis_com_traffic.total_application_total_bytes desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
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
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    listen:
      Timestamp Date: ids_googleapis_com_traffic.timestamp_date
    row: 11
    col: 6
    width: 6
    height: 6
  - title: Traffic by Network (Bytes)
    name: Traffic by Network (Bytes)
    model: cloud_ids
    explore: ids_googleapis_com_traffic
    type: looker_pie
    fields: [ids_googleapis_com_traffic.total_network_total_bytes, ids_googleapis_com_traffic.json_payload__network]
    sorts: [ids_googleapis_com_traffic.total_network_total_bytes desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_types: {}
    defaults_version: 1
    listen:
      Timestamp Date: ids_googleapis_com_traffic.timestamp_date
    row: 11
    col: 18
    width: 6
    height: 6
  - title: Traffic by Application (Packets)
    name: Traffic by Application (Packets)
    model: cloud_ids
    explore: ids_googleapis_com_traffic
    type: looker_pie
    fields: [ids_googleapis_com_traffic.json_payload__application, ids_googleapis_com_traffic.total_applications_total_packets]
    filters:
      ids_googleapis_com_traffic.json_payload__application: "-incomplete"
    sorts: [ids_googleapis_com_traffic.total_application_total_packets desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
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
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    listen:
      Timestamp Date: ids_googleapis_com_traffic.timestamp_date
    row: 11
    col: 12
    width: 6
    height: 6
  filters:
  - name: Timestamp Date
    title: Timestamp Date
    type: field_filter
    default_value: 90 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cloud_ids
    explore: ids_googleapis_com_traffic
    listens_to_filters: []
    field: ids_googleapis_com_traffic.timestamp_date
