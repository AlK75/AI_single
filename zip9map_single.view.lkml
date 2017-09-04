view: zip9map_single {
  sql_table_name: looker_pub1.zip9allvisits_single ;;

  dimension: beaconid {
    type: string
    sql: ${TABLE}.beaconid ;;
  }

  dimension: daynum {
    type: number
    sql: ${TABLE}.daynum ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }

  dimension: siteid {
    type: string
    sql: ${TABLE}.siteid ;;
    suggest_persist_for: "60 minutes"
  }

  dimension: pageid {
    type: string
    sql: ${TABLE}.pageid ;;
    suggest_persist_for: "60 minutes"
  }

  dimension: visitcount {
    type: number
    sql: ${TABLE}.visitcount ;;
  }

  dimension: zip9 {
    type: number
    sql: ${TABLE}.zip9 ;;
  }

  dimension: Zip9coord {

    type: location
    sql_latitude:${lat};;
    sql_longitude:${lon};;
  }

  measure: HeatMapPointVisits{
    type: sum
    sql: ${TABLE}.visitcount ;;
  }
}
