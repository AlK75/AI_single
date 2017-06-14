view: beaconvisits_single {
  sql_table_name: looker_pub1.beaconvisits_single ;;

  dimension: beaconid {
    type: string
    sql: ${TABLE}.beaconid ;;
  }

  dimension: beaconuniquedevices {
    type: number
    sql: ${TABLE}.beaconuniquedevices ;;
  }

  dimension: daynum {
    type: number
    sql: ${TABLE}.daynum ;;
  }

  dimension: daypart {
    type: number
    sql: ${TABLE}.daypart ;;
  }

  dimension: devicetype {
    type: number
    sql: ${TABLE}.devicetype ;;
  }

  dimension: iscrawler {
    type: yesno
    sql: ${TABLE}.iscrawler ;;
  }

  dimension: siteid {
    type: string
    sql: ${TABLE}.siteid ;;
    suggest_persist_for: "1 minute"
  }

  dimension: visitcount {
    type: number
    sql: ${TABLE}.visitcount ;;
  }

 measure: count_TotalVisits {

  type: sum
  sql:  ${TABLE}.visitcount ;;
}


measure: count_TotalBeaconUniqueDevices {
  type: sum
  sql:  ${TABLE}.beaconuniquedevices ;;
}

measure: count_MobileVisits {
  type: sum
  sql:  ${TABLE}.visitcount ;;
  filters: {
    field: devicetype.name
    value: "mobile,smartphone,smallscreen,smartwatch"
  }
}

measure: percent_MobileVisits {
  type: number
  value_format: "#.00\%"
  sql: 100.00 * ${count_MobileVisits} / NULLIF(${count_TotalVisits},0) ;;
}

measure: count_DesktopVisits {
  type: sum
  sql:  ${TABLE}.visitcount ;;
  filters: {
    field: devicetype.name
    value: "desktop"
  }
}

measure: percent_DesktopVisits {
  type: number
  value_format: "#.00\%"
  sql: 100.00 * ${count_DesktopVisits} / NULLIF(${count_TotalVisits},0) ;;
}

measure: count_BotVisits {
  type: sum
  sql:  ${TABLE}.visitcount ;;
  filters: {
    field: iscrawler
    value: "yes"
  }
}

measure: percent_BotVisits {
  type: number
  value_format: "#.00\%"
  sql: 100.00 * ${count_BotVisits} / NULLIF(${count_TotalVisits},0) ;;

}
}
