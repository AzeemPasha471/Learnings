# AWS learning

## Reserved instances
![alt text](img_scr/image1.png)

## Spot instances

![alt text](img_scr/image2.png)

## Dedicated host

![alt text](img_scr/image3.png)

## Bucket Versioning.

![alt text](img_scr/image4.png)

## EBS VS S3 Vs EFS

![alt text](img_scr/image7.png)
factors to consider before selecting storage.
 - performance
 - cost
 - Avaialbility and durability
 are major 3 things to consider.
 
rough representation
![alt text](img_scr/image8.png)

![alt text](img_scr/image9.png)


### ***EBS volume***
`architecture:`
- scope level is AZ (avaialbility zone) level.

`use case:`
- attacht to EC2 instance as blcok storage.
### ***s3 ***
`architecture:`
- scope is regional. 

<img src="img_scr/image10.png" width="600" height="400">

`use case:` 
- storing picture and videos.

### ***EFS***
`architecture:`
- scope is regional. 

<img src="img_scr/image11.png" width="600" height="300">

`use case:` 
- used to shared the same storage accross multiple instances.
- can be shared with on-premise as well.
- uses NFS protocal.

### Availabilitya and Durability of each
![alt text](img_scr/image12.png)
![alt text](img_scr/image13.png)


### Performance measure.
![alt text](img_scr/image14.png)
<img src="image15.png" width="400" height="200">


### Cost.
![alt text](img_scr/image16.png)


### Decision tree.
![alt text](img_scr/image17.png)

## DNS Resolver

![alt text](img_scr/image18.png)

## Web server VS Application server.

web servers are used to serve the webcontenet where as appliacaiton servers are used to write the bussiness logic.

ex: flipkart.com.

where application server is exposed to internet like adding cart and saving it without login into flipkart accout.

`SSL termination` - happens at ALB and best place to stre the ssl cerificare is ALB.

## ALB vs NLB
![alt text](img_scr/image19.png)
![alt text](img_scr/image22.png)
ALB supports more fature as in image 19. 
works on layer 7 application layer.


while as NLB cannot and NLB have hig throughput and low latency.
works on layer 4 transport layer.

## algorithms followed on LB level.
![alt text](img_scr/image21.png)

## CIDR calculation

check with youtube "AwS with Chetan"

## instance 2/2 check

![alt text](img_scr/image25.png)


## KMS encryption working

[source for KMS encryption working](https://medium.com/@rohnux_26/encryption-of-data-using-aws-kms-b9f71f77696c)




