view: beacondailyvisits_single {
  sql_table_name: looker_pub1.beacondailyvisits_single ;;

  dimension: beaconid {
    type: string
    sql: ${TABLE}.beaconid ;;
  }

  dimension: beaconuniquedevices {
    type: number
    sql: ${TABLE}.beaconuniquedevices ;;
  }

  dimension: daynum {
    type: date
    sql: ${TABLE}.daynum ;;
  }

  dimension: pageid {
    type: string
    sql: ${TABLE}.pageid ;;
  }

  dimension: siteid {
    type: string
    sql: ${TABLE}.siteid ;;
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
}
