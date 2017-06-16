view: zip5position {
  sql_table_name: looker_pub1.zip5position ;;

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }

  dimension: statefips {
    type: number
    sql: ${TABLE}.statefips ;;
  }

  dimension: zip5 {
    type: number
    sql: ${TABLE}.zip5 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
