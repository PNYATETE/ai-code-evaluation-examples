# Sample data
let data = [
  { name: "Alice", age: 25 }
  { name: "Bob", age: 30 }
]

# Transform data
$data | each { |row|
  {
    name: $row.name
    age_group: if $row.age > 27 { "Senior" } else { "Junior" }
  }
}