view: b2cemail {
  sql_table_name: looker_pub1.b2cemail ;;

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
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
