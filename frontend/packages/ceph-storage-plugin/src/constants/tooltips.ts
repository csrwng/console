import { TFunction } from 'i18next';

export const storageClassTooltip = (t: TFunction) =>
  t(
    'ceph-storage-plugin~The Storage Class will be used to request storage from the underlying infrastructure to create the backing persistent volumes that will be used to provide the OpenShift Container Storage (OCS) service.',
  );
export const requestedCapacityTooltip = (t: TFunction) =>
  t(
    'ceph-storage-plugin~The backing storage requested will be higher as it will factor in the requested capacity replica factor and fault tolerant costs associated with the requested capacity.',
  );
export const arbiterText = (t: TFunction) =>
  t(
    'ceph-storage-plugin~If you wish to use the Arbiter stretch cluster, a minimum of 4 nodes (2 different zones, 2 nodes per zone) and 1 additional zone with 1 node is required. All nodes must be pre-labeled with zones in order to be validated on cluster creation.',
  );
export const attachDevices = (t: TFunction) =>
  t(
    'ceph-storage-plugin~Selected nodes are based on the selected storage class. The selected nodes will preferably be in 3 different zones with a recommended requirement of 14 CPUs and 34 GiB per node.',
  );
export const attachDevicesWithArbiter = (t: TFunction) =>
  t(
    'ceph-storage-plugin~Selected nodes are based on the selected storage class. 4 nodes in 2 different zones will be selected with a recommended requirement of 14 CPU and 34 GiB RAM per node.',
  );
export const encryptionTooltip =
  'The storage cluster encryption level can be set to include all components under the cluster (including storage class and PVs) or to include only storage class encryption. PV encryption can use an auth token that will be used with the KMS configuration to allow multi-tenancy.';
export const vaultNamespaceTooltip =
  'Vault enterprise namespaces are isolated environments that functionally exist as "Vaults within a Vault". They have separate login paths and support creating and managing data isolated to their namespace.';
