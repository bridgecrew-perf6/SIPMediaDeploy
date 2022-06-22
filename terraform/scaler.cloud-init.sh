#!/bin/sh

cd /var/scaler

OS_AUTH_URL=${os_auth_url}
OS_USERNAME=${os_username}
OS_PASSWORD=${os_password}
OS_REGION_NAME=${os_region_name}
OS_PROJECT_DOMAIN_ID=${os_project_domain_id}
OS_USER_DOMAIN_NAME=${os_user_domain_name}
OS_PROJECT_ID=${os_project_id}
OS_PROJECT_NAME=${os_project_name}
OS_INTERFACE=${os_interface}
OS_IDENTITY_API_VERSION=${os_identity_api_version}
OPENSTACK_FLAVOR=${openstack_flavor}
OPENSTACK_IMAGE=${openstack_image}
OPENSTACK_IP_VERSION=${openstack_ip_version}
OPENSTACK_NETWORK=${openstack_network}
OPENSTACK_METADATA_KEY=${openstack_metadata_key}
OPENSTACK_METADATA_VALUE=${openstack_metadata_value}
OPENSTACK_KEYPAIR=${openstack_keypair}

sed -i -E "s/^OS_AUTH_URL=.*$/OS_AUTH_URL=$OS_AUTH_URL/" .env
sed -i -E "s/^OS_USERNAME=.*$/OS_USERNAME=$OS_USERNAME/" .env
sed -i -E "s/^OS_PASSWORD=.*$/OS_PASSWORD=$OS_PASSWORD/" .env
sed -i -E "s/^OS_REGION_NAME=.*$/OS_REGION_NAME=$OS_REGION_NAME/" .env
sed -i -E "s/^OS_PROJECT_DOMAIN_ID=.*$/OS_PROJECT_DOMAIN_ID=$OS_PROJECT_DOMAIN_ID/" .env
sed -i -E "s/^OS_USER_DOMAIN_NAME=.*$/OS_USER_DOMAIN_NAME=$OS_USER_DOMAIN_NAME/" .env
sed -i -E "s/^OS_PROJECT_ID=.*$/OS_PROJECT_ID=$OS_PROJECT_ID/" .env
sed -i -E "s/^OS_PROJECT_NAME=.*$/OS_PROJECT_NAME=$OS_PROJECT_NAME/" .env
sed -i -E "s/^OS_INTERFACE=.*$/OS_INTERFACE=$OS_INTERFACE/" .env
sed -i -E "s/^OS_IDENTITY_API_VERSION=.*$/OS_IDENTITY_API_VERSION=$OS_IDENTITY_API_VERSION/" .env
sed -i -E "s/^OPENSTACK_FLAVOR=.*$/OPENSTACK_FLAVOR=$OPENSTACK_FLAVOR/" .env
sed -i -E "s/^OPENSTACK_IMAGE=.*$/OPENSTACK_IMAGE=$OPENSTACK_IMAGE/" .env
sed -i -E "s/^OPENSTACK_IP_VERSION=.*$/OPENSTACK_IP_VERSION=$OPENSTACK_IP_VERSION/" .env
sed -i -E "s/^OPENSTACK_NETWORK=.*$/OPENSTACK_NETWORK=$OPENSTACK_NETWORK/" .env
sed -i -E "s/^OPENSTACK_METADATA_KEY=.*$/OPENSTACK_METADATA_KEY=$OPENSTACK_METADATA_KEY/" .env
sed -i -E "s/^OPENSTACK_METADATA_VALUE=.*$/OPENSTACK_METADATA_VALUE=$OPENSTACK_METADATA_VALUE/" .env
sed -i -E "s/^OPENSTACK_KEYPAIR=.*$/OPENSTACK_KEYPAIR=$OPENSTACK_KEYPAIR/" .env

sudo -u scaler docker-compose up -d
