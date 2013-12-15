# = Class: postgresql::install::postgresql_org_redhat
#
# This class installs the Official postgresql.org repo for RedHat family
# Note: It uses rsources provided by example42 yum module.
#
class postgresql::install::postgresql_org_redhat {

  yum::managed_yumrepo { "pgdg${::postgresql::version}":
    descr          => "PostgreSQL ${postgresql::version_short} \$releasever - \$basearch",
    baseurl        => "http://yum.postgresql.org/${postgresql::version}/redhat/rhel-\$releasever-\$basearch",
    enabled        => 1,
    gpgcheck       => 1,
    gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-PGDG',
    gpgkey_source  => 'puppet:///modules/yum/rpm-gpg/RPM-GPG-KEY-PGDG',
    priority       => 20,
  }

}