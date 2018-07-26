script_path=$1
start_date=$2
end_date=$3
echo "backfill process starting for $script_path from $start_date to $end_date"
while [ "$start_date" != "$end_date" ]; do
  python "$script_path" -d $start_date
  echo $start_date
  start_date=$(date -I -d "$start_date + 1 day")
echo "backfill process done running"
done
