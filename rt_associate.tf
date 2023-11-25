#### pub_rt with pub_sub ######

resource "aws_route_table_association" "prj3_mahi_pub_rt_ass" {

  subnet_id = aws_subnet.prj3_mahi_pub_sub.id

  route_table_id = aws_route_table.prj3_mahi_pub_rt.id

}

resource "aws_route_table_association" "prj3_mahi_pub2_rt_ass" {

  subnet_id = aws_subnet.prj3_mahi_pub2_sub.id

  route_table_id = aws_route_table.prj3_mahi_pub_rt.id

}
