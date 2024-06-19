account_id        = "138865427381"
region            = "eu-west-1"
parent_system     = "al"
environment       = "prod"
business_reason   = "production"
enabled_azs       = ["a", "c", "d"]
customer_code     = "POOP435"
nat_customer_code = ""
ami_id            = "ami-01f2c906ff49f3e62" # oraclelinux8.8-en-gi-al-v1.19.0-20240304_1359
servers = {
  "poop69" = {
    hostname      = "poop69"
    subnet_id     = "a"
    instance_size = "c5.large"
    salesforce_id = ["29094", "29095"]
    root_block_device = [
      {
        device_name = "/dev/sda1"
        volume_size = 20
        volume_type = "gp3"
        iops        = 3000
        throughput  = 125
        encrypted   = true
        tags = {
          "CloudreachBackupGroup" = "default-ebs-prod"
          "CloudreachSupport"     = "BaseSupport"
        }
      }
    ]
    ebs_block_device = [
      {
        device_name = "/dev/xvdb"
        volume_size = 80
        volume_type = "gp3"
        iops        = 3000
        throughput  = 125
        encrypted   = true
        tags = {
          "mountpoint"             = "/user1698"
          "CloudreachSupport"      = "BaseSupport"
          "CloudreachBackupIgnore" = "True"
        }
      },
      {
        device_name = "/dev/xvdc"
        volume_size = 70 # 60GB total usage for /arc3/asp1698
        volume_type = "gp3"
        iops        = 3000
        throughput  = 125
        encrypted   = true
        tags = {
          "mountpoint"            = "/arc3"
          "CloudreachBackupGroup" = "default-ebs-prod"
          "CloudreachSupport"     = "BaseSupport"
        }
      },
    ]
    tags = {
      "CloudreachSupport"      = "BaseSupport"
      "CloudreachBackupGroup"  = "None"
      "CloudreachBackupIgnore" = "True"
    }
  }
}

integrations = {
  apigw_japan = "none"
}
