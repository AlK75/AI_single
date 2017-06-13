view: beaconweeklyvisits_single {
  sql_table_name: looker_pub1.beaconweeklyvisits_single ;;

  dimension: beaconid {
    type: string
    sql: ${TABLE}.beaconid ;;
  }

  dimension: beaconuniquedevices {
    type: number
    sql: ${TABLE}.beaconuniquedevices ;;
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
  }

  dimension: visitcount {
    type: number
    sql: ${TABLE}.visitcount ;;
  }

  dimension_group: weeknum {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.weeknum ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
