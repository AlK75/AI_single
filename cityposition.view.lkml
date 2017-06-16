view: cityposition {
  sql_table_name: looker_pub1.cityposition ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

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

  dimension: statefips {
    type: number
    sql: ${TABLE}.statefips ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
