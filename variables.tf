variable "aws_access_key_id" {
  description = "AWS Access Key ID"
  type        = string
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access Key"
  type        = string
}

variable "server_port" { 
 description = "Numer portu używany przez serwer dla żądań HTTP" 
 type = number 
 default = 8080 
} 

output "public_ip" { 
 value = aws_instance.example.public_ip 
 description = "Publiczny adres IP serwera WWW" 
} 

output "alb_dns_name" { 
 value = aws_lb.example.dns_name 
 description = "Nazwa domeny mechanizmu równoważenia obciążenia" 
} 