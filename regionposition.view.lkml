view: regionposition {
  sql_table_name: looker_pub1.regionposition ;;

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: regionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.regionid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
