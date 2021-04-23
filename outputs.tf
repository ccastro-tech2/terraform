output dev4 {
  value       = "${aws_instance.dev4.public_ip}"
  #sensitive   = true
  description = "ip_public"
  #depends_on  = []
}

output dev5 {
  value       = "${aws_instance.dev5.public_ip}"
  #sensitive   = true
  description = "ip_public"
  #depends_on  = []
}

output dev6 {
  value       = "${aws_instance.dev6.public_ip}"
  #sensitive   = true
  description = "ip_public"
  #depends_on  = []
}

output dev7 {
  value       = "${aws_instance.dev7.public_ip}"
  #sensitive   = true
  description = "ip_public"
  #depends_on  = []
}

