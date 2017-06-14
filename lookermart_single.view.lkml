view: lookermart_single {
  sql_table_name: looker_pub1.lookermart_single ;;

  dimension: beaconid {
    type: string
    sql: ${TABLE}.beaconid ;;
  }

  dimension: daynum {
    type: number
    sql: ${TABLE}.daynum ;;
  }

  dimension: daypart {
    type: number
    sql: ${TABLE}.daypart ;;
  }

  dimension: devicecount {
    type: number
    sql: ${TABLE}.devicecount ;;
  }

  dimension: devicetype {
    type: number
    sql: ${TABLE}.devicetype ;;
  }

  dimension: ipnum {
    type: number
    sql: ${TABLE}.ipnum ;;
  }

  dimension: iscrawler {
    type: yesno
    sql: ${TABLE}.iscrawler ;;
  }

  dimension: siteid {
    type: string
    sql: ${TABLE}.siteid ;;
  }

  dimension: statisticalid {
    type: string
    sql: ${TABLE}.statisticalid ;;
  }

  dimension: zip9 {
    type: number
    sql: ${TABLE}.zip9 ;;
  }

  measure: count_TotalVisits {

    type: sum
    sql:  ${TABLE}.devicecount ;;
  }

  measure: count_UniqueDevices {
    type: count_distinct
    sql:  ${TABLE}.statisticalid ;;
  }

  measure: count_MobileVisits {
    type: sum
    sql:  ${TABLE}.devicecount ;;
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

  measure: count_BotVisits {
    type: sum
    sql:  ${TABLE}.devicecount ;;
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

  measure: count_UniqueIPs {
    type: count_distinct
    sql:  ${TABLE}.ipnum ;;
  }

  measure: count_UniqueZip9s {
    type: count_distinct
    sql:  ${TABLE}.Zip9 ;;
  }

  measure: count_UniqueZip5s {
    type: count_distinct
    sql:  ${TABLE}.Zip9/10000 ;;
  }
}
