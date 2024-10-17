terraform{
backend "s3"{
    bucket = "suryanshredshiftbucket"
    key = "backend-webinfotech.tf"
    region = "us-east-1"
    

}
}