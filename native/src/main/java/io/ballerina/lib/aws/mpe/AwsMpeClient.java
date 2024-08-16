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
import io.ballerina.runtime.api.values.BObject;
import io.ballerina.runtime.api.values.BString;

/**
 * Representation of {@link software.amazon.awssdk.services.marketplaceentitlement.MarketplaceEntitlementClient} with
 * utility methods to invoke as inter-op functions.
 */
public final class AwsMpeClient {
    private AwsMpeClient() {
    }

    public static Object init(BObject bAwsMpeClient, BMap<BString, Object> configurations) {
        return null;
    }

    public static Object getEntitlements(BObject bAwsMpeClient, BMap<BString, Object> request) {
        return null;
    }

    public static Object close(BObject bAwsMpeClient) {
        return null;
    }
}
