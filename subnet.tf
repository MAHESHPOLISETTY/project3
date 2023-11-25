######public_subnet

resource "aws_subnet" "prj3_mahi_pub_sub" {

  vpc_id = aws_vpc.prj3_mahi.id

  cidr_block = "10.0.0.0/28"

  availability_zone = "us-east-1a"

  map_public_ip_on_launch = "true"

  tags = {

    Name = "PRJ3_PUB_SB"


  }
}


resource "aws_subnet" "prj3_mahi_pub2_sub" {

  vpc_id = aws_vpc.prj3_mahi.id

  cidr_block = "10.0.0.16/28"

  availability_zone = "us-east-1b"

  map_public_ip_on_launch = "true"

  tags = {

    Name = "PRJ3_PUB2_SB"


  }
}

