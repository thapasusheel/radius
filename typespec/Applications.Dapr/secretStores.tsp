/*
Copyright 2023 The Radius Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0
    
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

import "@typespec/rest";
import "@typespec/versioning";
import "@typespec/openapi";
import "@azure-tools/typespec-autorest";
import "@azure-tools/typespec-azure-core";
import "@azure-tools/typespec-azure-resource-manager";
import "@azure-tools/typespec-providerhub";

import "../radius/v1/ucprootscope.tsp";
import "../radius/v1/resources.tsp";
import "./common.tsp";

using TypeSpec.Http;
using TypeSpec.Rest;
using TypeSpec.Versioning;
using Autorest;
using Azure.ResourceManager;
using OpenAPI;

namespace Applications.Dapr;

@doc("Dapr SecretStore portable resource")
model DaprSecretStoreResource is TrackedResource<DaprSecretStoreProperties> {
  @doc("SecretStore name")
  @key("secretStoreName")
  @path
  @segment("secretStores")
  name: ResourceNameString;
}

@doc("Dapr SecretStore portable resource properties")
model DaprSecretStoreProperties {
  ...EnvironmentScopedResource;
  ...DaprResourceProperties;
  ...RecipeBaseProperties;
}

@armResourceOperations
interface SecretStores {
  get is ArmResourceRead<
    DaprSecretStoreResource,
    UCPBaseParameters<DaprSecretStoreResource>
  >;

  createOrUpdate is ArmResourceCreateOrReplaceAsync<
    DaprSecretStoreResource,
    UCPBaseParameters<DaprSecretStoreResource>
  >;

  update is ArmResourcePatchAsync<
    DaprSecretStoreResource,
    DaprSecretStoreProperties,
    UCPBaseParameters<DaprSecretStoreResource>
  >;

  delete is ArmResourceDeleteAsync<
    DaprSecretStoreResource,
    UCPBaseParameters<DaprSecretStoreResource>
  >;

  listByScope is ArmResourceListByParent<
    DaprSecretStoreResource,
    UCPBaseParameters<DaprSecretStoreResource>,
    "Scope",
    "Scope"
  >;
}
