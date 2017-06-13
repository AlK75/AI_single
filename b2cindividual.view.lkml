view: b2cindividual {
  sql_table_name: looker_pub1.b2cindividual ;;

  dimension: individualid {
    type: number
    value_format_name: id
    sql: ${TABLE}.individualid ;;
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
