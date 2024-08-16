/*
 * Copyright (c) 2024, WSO2 LLC. (http://www.wso2.com)
 *
 * WSO2 LLC. licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

package io.ballerina.lib.aws.mpe;

import io.ballerina.runtime.api.values.BMap;
import io.ballerina.runtime.api.values.BString;
import software.amazon.awssdk.regions.Region;

/**
 * {@code ConnectionConfig} contains the java representation of the Ballerina AWS MPE client configurations.
 *
 * @param region          The AWS region with which the connector should communicate
 * @param accessKeyId     The AWS access key, used to identify the user interacting with AWS.
 * @param secretAccessKey The AWS secret access key, used to authenticate the user interacting with AWS.
 * @param sessionToken    The AWS session token, retrieved from an AWS token service, used for authenticating that
 *                        this user has received temporary permission to access some resource.
 */
public record ConnectionConfig(Region region, String accessKeyId, String secretAccessKey, String sessionToken) {

    // todo: implement this properly
    public ConnectionConfig(BMap<BString, Object> configurations) {
        this(null, null, null, null);
    }
}
