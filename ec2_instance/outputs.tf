output "aws_instance_id" {
  value = "${aws_instance.<app.id>}" # replace <..> with app name followed by .id
}
