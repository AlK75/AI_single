view: stateposition {
  sql_table_name: looker_pub1.stateposition ;;

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }

  dimension: regionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.regionid ;;
  }

  dimension: stateabb {
    type: string
    sql: ${TABLE}.stateabb ;;
  }

  dimension: statefips {
    type: number
    sql: ${TABLE}.statefips ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
