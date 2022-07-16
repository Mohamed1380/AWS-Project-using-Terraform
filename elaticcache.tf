
resource "aws_elasticache_subnet_group" "elasticache_subnet_group" {

  name       = "elatstic"
  subnet_ids = [aws_subnet.privatesubnet1.id,aws_subnet.privatesubnet2.id]
}

resource "aws_elasticache_cluster" "myredis" {
  cluster_id           = "cluster-example"
  engine               = "redis"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
  subnet_group_name    = aws_elasticache_subnet_group.elasticache_subnet_group.name
}

