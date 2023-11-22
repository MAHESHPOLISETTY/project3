################IGW-PRJ3############

resource "aws_internet_gateway" "prj3_mahi_igw" {

  vpc_id = aws_vpc.prj3_mahi.id

  tags = {

    Name = "PRJ3_IGW"

  }
}
