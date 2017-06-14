view: zipvisits_single {
  sql_table_name: looker_pub1.zipvisits_single ;;

  dimension: beaconid {
    type: string
    sql: ${TABLE}.beaconid ;;
  }

  dimension: daynum {
    type: number
    sql: ${TABLE}.daynum ;;
  }

  dimension: siteid {
    type: string
    sql: ${TABLE}.siteid ;;
  }

  dimension: visitcount {
    type: number
    sql: ${TABLE}.visitcount ;;
  }

  dimension: visitrank {
    type: number
    sql: ${TABLE}.visitrank ;;
  }

    dimension: zip9 {

      type: number
      value_format: "*0000#-####"
      sql: ${TABLE}.zip9 ;;
    }

    measure: TopVisits {
      type: sum
      sql: ${TABLE}.visitcount ;;
      }
}
