view: zip9position2 {
  sql_table_name: looker_pub1.zip9position2 ;;

  dimension: citycode {
    type: number
    sql: ${TABLE}.citycode ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }

  dimension: zip9 {
    type: number
    sql: ${TABLE}.zip9 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
