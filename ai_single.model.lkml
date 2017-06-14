connection: "ipmaster-looker"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: b2cemail {}

explore: b2cfacebook {}

explore: b2cindividual {}

explore: beacondpuniquevisits_single {
  join:  pxcelclient
  {
    type: inner
    sql_on: ${beacondpuniquevisits_single.beaconid} = ${pxcelclient.beaconid} ;;
    relationship: many_to_one
  }

  join:  client2lookeruser
  {
    type: inner
    sql_on: ${pxcelclient.clientname} = ${client2lookeruser.clientname} ;;
    relationship: many_to_one
  }

  join:  daypart
  {
    type: inner
    sql_on: ${beacondpuniquevisits_single.daypart} = ${daypart.id} ;;
    relationship: many_to_one
  }

  join:  daysperiod
  {
    type: inner
    sql_on: ${beacondpuniquevisits_single.daynum} = ${daysperiod.id} ;;
    relationship: many_to_one
  }

  access_filter: {
    field: client2lookeruser.userattribute
    user_attribute: beacon2company
  }
}

explore: beacondtuniquevisits_single {
  join:  devicetype
  {
    type: left_outer
    sql_on: ${beacondtuniquevisits_single.devicetype} = ${devicetype.id} ;;
    relationship: many_to_one
  }

  join:  pxcelclient
  {
    type: inner
    sql_on: ${beacondtuniquevisits_single.beaconid} = ${pxcelclient.beaconid} ;;
    relationship: many_to_one
  }

  join:  client2lookeruser
  {
    type: inner
    sql_on: ${pxcelclient.clientname} = ${client2lookeruser.clientname} ;;
    relationship: many_to_one
  }

  join:  daysperiod
  {
    type: inner
    sql_on: ${beacondtuniquevisits_single.daynum} = ${daysperiod.id} ;;
    relationship: many_to_one
  }

  access_filter: {
    field: client2lookeruser.userattribute
    user_attribute: beacon2company
  }
}

explore: beaconvisits_single {
  join:  devicetype
  {
    type: left_outer
    sql_on: ${beaconvisits_single.devicetype} = ${devicetype.id} ;;
    relationship: many_to_one
  }

  join:  pxcelclient
  {
    type: inner
    sql_on: ${beaconvisits_single.beaconid} = ${pxcelclient.beaconid} ;;
    relationship: many_to_one
  }

  join:  client2lookeruser
  {
    type: inner
    sql_on: ${pxcelclient.clientname} = ${client2lookeruser.clientname} ;;
    relationship: many_to_one
  }

  join:  daypart
  {
    type: inner
    sql_on: ${beaconvisits_single.daypart} = ${daypart.id} ;;
    relationship: many_to_one
  }

  join:  daysperiod
  {
    type: inner
    sql_on: ${beaconvisits_single.daynum} = ${daysperiod.id} ;;
    relationship: many_to_one
  }

  access_filter: {
    field: client2lookeruser.userattribute
    user_attribute: beacon2company
  }
}

explore: beaconweeklyvisits_single {
  join:  devicetype
  {
    type: left_outer
    sql_on: ${beaconweeklyvisits_single.devicetype} = ${devicetype.id} ;;
    relationship: many_to_one
  }

  join:  pxcelclient
  {
    type: inner
    sql_on: ${beaconweeklyvisits_single.beaconid} = ${pxcelclient.beaconid} ;;
    relationship: many_to_one
  }

  join:  client2lookeruser
  {
    type: inner
    sql_on: ${pxcelclient.clientname} = ${client2lookeruser.clientname} ;;
    relationship: many_to_one
  }

  access_filter: {
    field: client2lookeruser.userattribute
    user_attribute: beacon2company
  }
}

explore: client2lookeruser {}

explore: daypart {}

explore: daysperiod {}

explore: devicetype {}

explore: Audience_single {
  join:  pxcelclient
  {
    type: inner
    sql_on: ${Audience_single.beaconid} = ${pxcelclient.beaconid} ;;
    relationship: many_to_one
  }

  join:  client2lookeruser
  {
    type: inner
    sql_on: ${pxcelclient.clientname} = ${client2lookeruser.clientname} ;;
    relationship: many_to_one
  }

  join:  daysperiod
  {
    type: inner
    sql_on: ${Audience_single.daynum} = ${daysperiod.id} ;;
    relationship: many_to_one
  }

  access_filter: {
    field: client2lookeruser.userattribute
    user_attribute: beacon2company
  }
}

explore: lookermart_single {
  join:  devicetype
  {
    type: left_outer
    sql_on: ${lookermart_single.devicetype} = ${devicetype.id} ;;
    relationship: many_to_one
  }

  join:  pxcelclient
  {
    type: inner
    sql_on: ${lookermart_single.beaconid} = ${pxcelclient.beaconid} ;;
    relationship: many_to_one
  }

  join:  client2lookeruser
  {
    type: inner
    sql_on: ${pxcelclient.clientname} = ${client2lookeruser.clientname} ;;
    relationship: many_to_one
  }

  join:  daypart
  {
    type: inner
    sql_on: ${lookermart_single.daypart} = ${daypart.id} ;;
    relationship: many_to_one
  }

  join:  daysperiod
  {
    type: inner
    sql_on: ${lookermart_single.daynum} = ${daysperiod.id} ;;
    relationship: many_to_one
  }

  join:  b2cemail
  {
    type: left_outer
    sql_on: ${lookermart_single.zip9} = ${b2cemail.zip9} ;;
    relationship: many_to_one
  }

  join:  b2cfacebook
  {
    type: left_outer
    sql_on: ${lookermart_single.zip9} = ${b2cfacebook.zip9} ;;
    relationship: many_to_one
  }

  join:  b2cindividual
  {
    type: left_outer
    sql_on: ${lookermart_single.zip9} = ${b2cindividual.zip9} ;;
    relationship: many_to_one
  }

  access_filter: {
    field: client2lookeruser.userattribute
    user_attribute: beacon2company
  }
}

explore: pxcelclient {

  join:  client2lookeruser
  {
    type: inner
    sql_on: ${pxcelclient.clientname} = ${client2lookeruser.clientname} ;;
    relationship: many_to_one
  }
}

explore: zip9position {}

explore: zipvisits_single
{
  join:  pxcelclient
  {
    type: inner
    sql_on: ${zipvisits_single.beaconid} = ${pxcelclient.beaconid} ;;
    relationship: many_to_one
  }

  join:  client2lookeruser
  {
    type: inner
    sql_on: ${pxcelclient.clientname} = ${client2lookeruser.clientname} ;;
    relationship: many_to_one
  }

  join:  daysperiod
  {
    type: inner
    sql_on: ${zipvisits_single.daynum} = ${daysperiod.id} ;;
    relationship: many_to_one
  }

  access_filter: {
    field: client2lookeruser.userattribute
    user_attribute: beacon2company
  }

}

explore: zip9map_single
{
  join:  pxcelclient
  {
    type: inner
    sql_on: ${zip9map_single.beaconid} = ${pxcelclient.beaconid} ;;
    relationship: many_to_one
  }

  join:  client2lookeruser
  {
    type: inner
    sql_on: ${pxcelclient.clientname} = ${client2lookeruser.clientname} ;;
    relationship: many_to_one
  }

  join:  daysperiod
  {
    type: inner
    sql_on: ${zip9map_single.daynum} = ${daysperiod.id} ;;
    relationship: many_to_one
  }

  access_filter: {
    field: client2lookeruser.userattribute
    user_attribute: beacon2company
  }

}
