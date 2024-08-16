// Copyright (c) 2024 WSO2 LLC. (http://www.wso2.com).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

# Represents the Client configurations for AWS Marketplace Entitlement service.
public type ConnectionConfig record {|
    # The AWS region with which the connector should communicate
    Region region;
    # The authentication configurations for the AWS Marketplace Entitlement service
    AuthConfig auth;
|};

# An Amazon Web Services region that hosts a set of Amazon services.
public enum Region {
    AF_SOUTH_1 = "af-south-1",
    AP_EAST_1 = "ap-east-1",
    AP_NORTHEAST_1 = "ap-northeast-1",
    AP_NORTHEAST_2 = "ap-northeast-2",
    AP_NORTHEAST_3 = "ap-northeast-3",
    AP_SOUTH_1 = "ap-south-1",
    AP_SOUTH_2 = "ap-south-2",
    AP_SOUTHEAST_1 = "ap-southeast-1",
    AP_SOUTHEAST_2 = "ap-southeast-2",
    AP_SOUTHEAST_3 = "ap-southeast-3",
    AP_SOUTHEAST_4 = "ap-southeast-4",
    AWS_CN_GLOBAL = "aws-cn-global",
    AWS_GLOBAL = "aws-global",
    AWS_ISO_GLOBAL = "aws-iso-global",
    AWS_ISO_B_GLOBAL = "aws-iso-b-global",
    AWS_US_GOV_GLOBAL = "aws-us-gov-global",
    CA_WEST_1 = "ca-west-1",
    CA_CENTRAL_1 = "ca-central-1",
    CN_NORTH_1 = "cn-north-1",
    CN_NORTHWEST_1 = "cn-northwest-1",
    EU_CENTRAL_1 = "eu-central-1",
    EU_CENTRAL_2 = "eu-central-2",
    EU_ISOE_WEST_1 = "eu-isoe-west-1",
    EU_NORTH_1 = "eu-north-1",
    EU_SOUTH_1 = "eu-south-1",
    EU_SOUTH_2 = "eu-south-2",
    EU_WEST_1 = "eu-west-1",
    EU_WEST_2 = "eu-west-2",
    EU_WEST_3 = "eu-west-3",
    IL_CENTRAL_1 = "il-central-1",
    ME_CENTRAL_1 = "me-central-1",
    ME_SOUTH_1 = "me-south-1",
    SA_EAST_1 = "sa-east-1",
    US_EAST_1 = "us-east-1",
    US_EAST_2 = "us-east-2",
    US_GOV_EAST_1 = "us-gov-east-1",
    US_GOV_WEST_1 = "us-gov-west-1",
    US_ISOB_EAST_1 = "us-isob-east-1",
    US_ISO_EAST_1 = "us-iso-east-1",
    US_ISO_WEST_1 = "us-iso-west-1",
    US_WEST_1 = "us-west-1",
    US_WEST_2 = "us-west-2"
}

# Represents the Authentication configurations for AWS Marketplace Entitlement service.
public type AuthConfig record {|
    # The AWS access key, used to identify the user interacting with AWS
    string accessKeyId;
    # The  The AWS secret access key, used to authenticate the user interacting with AWS
    string secretAccessKey;
    # The AWS session token, retrieved from an AWS token service, used for authenticating that 
    # this user has received temporary permission to access some resource
    string sessionToken?;
|};

# Represents the parameters used for the `GetEntitlements` operation.
public type EntitlementRequest record {|
    # Product code is used to uniquely identify a product in AWS Marketplace
    string productCode;
    # A parameter which is used to filter out entitlements for a specific customer or a specific dimension
    EntitlementFilter filter?;
    # The maximum number of results to return in a single call
    int maxResults?;
    # The token for pagination to retrieve the next set of results
    string nextToken;
|};

# Represents the filters used for `GetEntitlements` operation.
public type EntitlementFilter record {|
    # Customer identifier based filter
    string[] customerIdentifier?;
    # Produce dimension based filter
    string[] dimension?;
|};

# Represents the results retrieved from `GetEntitlements` operation.
public type EntitlementResponse record {|
    # The set of entitlements found through the GetEntitlements operation. 
    # If the result contains an empty set of entitlements, NextToken might still be present and should be used.
    Entitlement[] entitlements;
    # The token for pagination to retrieve the next set of results
    string nextToken?;
|};

# Represents the capacity in a product owned by the customer
public type Entitlement record {|
    # The product code for which the given entitlement applies
    string productCode?;
    # The dimension for which the given entitlement applies
    string dimension?;
    # The customer identifier is a handle to each unique customer in an application
    string customerIdentifier?;
    # The expiration date represents the minimum date through which this entitlement is expected to remain valid
    time:Utc expirationDate?;
    # The amount of capacity that the customer is entitled to for the product
    boolean|decimal|int|string value?;
|};
