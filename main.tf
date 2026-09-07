resource "aws_instance" "exerciseproject_app" {
    ami = "ami-0729131ef01366759"
    instance_type = "t3.micro"
    key_name = "newapplication"
    tags = {
        Name = "exerciseproject-app"
    } 
}