account_id        = "138865427381"
region            = "ap-northeast-1"
parent_system     = "al"
environment       = "prod"
business_reason   = "production"
enabled_azs       = ["a", "c", "d"]
customer_code     = "abc123"
ami_id            = "ami-01f2c906ff49f3e62" # oraclelinux8.8-en-gi-al-v1.19.0-20240304_1359
servers = {
  abc123-vm-6969 = {
    hostname      = "abc123-vm-6969"
    subnet_id     = "a"
    instance_size = "c5.large"
    salesforce_id = ""
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
        volume_size = 
        volume_type = "gp3"
        iops        = 3000
        throughput  = 125
        encrypted   = true
        tags = {
          "mountpoint"             = "/user1"
          "CloudreachSupport"      = "BaseSupport"
          "CloudreachBackupIgnore" = "True"
        }
      },
      {
        device_name = "/dev/xvdc"
        volume_size =  # 60GB total usage for /arc3/asp1698
        volume_type = "gp3"
        iops        = 3000
        throughput  = 125
        encrypted   = true
        tags = {
          "mountpoint"            = "/arc1"
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
