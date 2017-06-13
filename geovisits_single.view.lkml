view: geovisits_single {
  sql_table_name: looker_pub1.geovisits_single ;;

  dimension: beaconid {
    type: string
    sql: ${TABLE}.beaconid ;;
  }

  dimension: daynum {
    type: number
    sql: ${TABLE}.daynum ;;
  }

  dimension: emailcount {
    type: number
    sql: ${TABLE}.emailcount ;;
  }

  dimension: fbcount {
    type: number
    sql: ${TABLE}.fbcount ;;
  }

  dimension: indcount {
    type: number
    sql: ${TABLE}.indcount ;;
  }

  dimension: ipcount {
    type: number
    sql: ${TABLE}.ipcount ;;
  }

  dimension: siteid {
    type: string
    sql: ${TABLE}.siteid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
