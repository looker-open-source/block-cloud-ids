include: "/views/ids_googleapis_com_threat.view"

explore: ids_googleapis_com_threat {
  group_label: "Google Cloud IDS"
  label: "Threats"
  join: ids_googleapis_com_threat__json_payload__cves {
    sql: LEFT JOIN UNNEST(${ids_googleapis_com_threat.json_payload__cves}) as ids_googleapis_com_threat__json_payload__cves ;;
    relationship: one_to_many
  }
}
