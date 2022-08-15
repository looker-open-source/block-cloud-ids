- dashboard: threat_summary
  title: Google Cloud IDS - Threat Summary
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: y217Fpghrc8eMqrewYpiz4
  elements:
  - title: Threat Summary
    name: Threat Summary
    model: cloud_ids
    explore: ids_googleapis_com_threat
    type: single_value
    fields: [ids_googleapis_com_threat.count_threat_ids]
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
    single_value_title: Total Threats
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#EA4335",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Timestamp Date: ids_googleapis_com_threat.timestamp_date
    row: 0
    col: 0
    width: 6
    height: 2
  - title: Threats by Payload
    name: Threats by Payload
    model: cloud_ids
    explore: ids_googleapis_com_threat
    type: looker_pie
    fields: [ids_googleapis_com_threat.json_payload__name, ids_googleapis_com_threat.count_payload_names]
    sorts: [ids_googleapis_com_threat.count_payload_names desc]
    limit: 500
    value_labels: legend
    label_type: labVal
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
      Timestamp Date: ids_googleapis_com_threat.timestamp_date
    row: 11
    col: 18
    width: 6
    height: 6
  - title: Threats by CVE
    name: Threats by CVE
    model: cloud_ids
    explore: ids_googleapis_com_threat
    type: looker_pie
    fields: [ids_googleapis_com_threat__json_payload__cves.ids_googleapis_com_threat__json_payload__cves,
      ids_googleapis_com_threat__json_payload__cves.count_cves]
    sorts: [ids_googleapis_com_threat__json_payload__cves.count_cves desc]
    limit: 500
    value_labels: legend
    label_type: labVal
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
      Timestamp Date: ids_googleapis_com_threat.timestamp_date
    row: 11
    col: 6
    width: 6
    height: 6
  - title: Threats by URI or Filename
    name: Threats by URI or Filename
    model: cloud_ids
    explore: ids_googleapis_com_threat
    type: looker_pie
    fields: [ids_googleapis_com_threat.json_payload__uri_or_filename, ids_googleapis_com_threat.count_uri_or_filenames]
    sorts: [ids_googleapis_com_threat.count_uri_or_filenames desc]
    limit: 500
    value_labels: legend
    label_type: labVal
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
      Timestamp Date: ids_googleapis_com_threat.timestamp_date
    row: 11
    col: 12
    width: 6
    height: 6
  - title: Threats Over Time
    name: Threats Over Time
    model: cloud_ids
    explore: ids_googleapis_com_threat
    type: looker_area
    fields: [ids_googleapis_com_threat.timestamp_date, ids_googleapis_com_threat.count_names,
      ids_googleapis_com_threat.json_payload__name]
    pivots: [ids_googleapis_com_threat.json_payload__name]
    fill_fields: [ids_googleapis_com_threat.timestamp_date]
    sorts: [ids_googleapis_com_threat.timestamp_date desc, ids_googleapis_com_threat.json_payload__name]
    limit: 500
    column_limit: 50
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
    y_axes: [{label: '', orientation: left, series: [{axisId: CRITICAL - ids_googleapis_com_threat.count_alert_severity,
            id: CRITICAL - ids_googleapis_com_threat.count_alert_severity, name: CRITICAL},
          {axisId: HIGH - ids_googleapis_com_threat.count_alert_severity, id: HIGH
              - ids_googleapis_com_threat.count_alert_severity, name: HIGH}, {axisId: INFORMATIONAL
              - ids_googleapis_com_threat.count_alert_severity, id: INFORMATIONAL
              - ids_googleapis_com_threat.count_alert_severity, name: INFORMATIONAL},
          {axisId: LOW - ids_googleapis_com_threat.count_alert_severity, id: LOW -
              ids_googleapis_com_threat.count_alert_severity, name: LOW}, {axisId: MEDIUM
              - ids_googleapis_com_threat.count_alert_severity, id: MEDIUM - ids_googleapis_com_threat.count_alert_severity,
            name: MEDIUM}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_types: {}
    defaults_version: 1
    listen:
      Timestamp Date: ids_googleapis_com_threat.timestamp_date
    row: 2
    col: 0
    width: 24
    height: 9
  - title: Threats by Severity
    name: Threats by Severity
    model: cloud_ids
    explore: ids_googleapis_com_threat
    type: looker_pie
    fields: [ids_googleapis_com_threat.json_payload__alert_severity, ids_googleapis_com_threat.count_alert_severity]
    sorts: [alert_severity_sorting]
    limit: 500
    dynamic_fields: [{table_calculation: alert_severity_sorting, label: Alert Severity
          Sorting, expression: "case(\n  when(contains(${ids_googleapis_com_threat.json_payload__alert_severity},\"\
          CRITICAL\"), 1),\n  when(contains(${ids_googleapis_com_threat.json_payload__alert_severity},\"\
          HIGH\"), 2),\n  when(contains(${ids_googleapis_com_threat.json_payload__alert_severity},\"\
          MEDIUM\"), 3),\n  when(contains(${ids_googleapis_com_threat.json_payload__alert_severity},\"\
          LOW\"), 4),\n  when(contains(${ids_googleapis_com_threat.json_payload__alert_severity},\"\
          INFORMATIONAL\"), 5),\n  0\n  )", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: number}]
    value_labels: legend
    label_type: labVal
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
    hidden_fields: [severity_sorting, alert_severity_sorting]
    listen:
      Timestamp Date: ids_googleapis_com_threat.timestamp_date
    row: 11
    col: 0
    width: 6
    height: 6
  - title: Threat Summary (Copy)
    name: Threat Summary (Copy)
    model: cloud_ids
    explore: ids_googleapis_com_threat
    type: single_value
    fields: [ids_googleapis_com_threat__json_payload__cves.count_distinct_cves]
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
    single_value_title: Unique CVEs
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Timestamp Date: ids_googleapis_com_threat.timestamp_date
    row: 0
    col: 6
    width: 6
    height: 2
  - title: Threat Summary (Copy 2)
    name: Threat Summary (Copy 2)
    model: cloud_ids
    explore: ids_googleapis_com_threat
    type: single_value
    fields: [ids_googleapis_com_threat.count_distinct_uri_or_filenames]
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
    single_value_title: Unique URIs or Filenames
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#079c98",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Timestamp Date: ids_googleapis_com_threat.timestamp_date
    row: 0
    col: 12
    width: 6
    height: 2
  - title: Threat Summary (Copy 3)
    name: Threat Summary (Copy 3)
    model: cloud_ids
    explore: ids_googleapis_com_threat
    type: single_value
    fields: [ids_googleapis_com_threat.count_distinct_payload_names]
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
    single_value_title: Unique Payload Names
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#9334E6",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Timestamp Date: ids_googleapis_com_threat.timestamp_date
    row: 0
    col: 18
    width: 6
    height: 2
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
    explore: ids_googleapis_com_threat
    listens_to_filters: []
    field: ids_googleapis_com_threat.timestamp_date
