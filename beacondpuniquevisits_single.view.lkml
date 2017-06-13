view: beacondpuniquevisits_single {
  sql_table_name: looker_pub1.beacondpuniquevisits_single ;;

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

  dimension: siteid {
    type: string
    sql: ${TABLE}.siteid ;;
  }

  dimension: uniquevisits {
    type: number
    sql: ${TABLE}.uniquevisits ;;
  }

 measure: count_UniqueVisits {
  type: sum
  sql: ${TABLE}.uniquevisits ;;
}
}
