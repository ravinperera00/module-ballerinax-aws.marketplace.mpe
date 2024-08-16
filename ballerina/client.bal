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

import ballerina/jballerina.java;

# AWS Marketplace entitlement client.
public isolated client class Client {

    public isolated function init(ConnectionConfig configs) returns Error? {
        return self.externInit(configs);
    }

    isolated function externInit(ConnectionConfig configs) returns Error? = 
    @java:Method {
        'class: "io.ballerina.lib.aws.mpe.AwsMpeClient"
    } external;    

    remote function getEntitlements(EntitlementRequest request) returns EntitlementResponse|Error =
    @java:Method {
        'class: "io.ballerina.lib.aws.mpe.AwsMpeClient"
    } external;

    remote function close() returns Error? =
    @java:Method {
        'class: "io.ballerina.lib.aws.mpe.AwsMpeClient"
    } external;
}
