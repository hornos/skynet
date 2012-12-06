# This file is sourced by the following startup scripts:
#   /etc/init.d/slurm    : starting slurmd and  slurmctld
#   /etc/init.d/slurmdbd : starting slurmdbd

# Path to slurm base
SLURM_VERSION=2.2.7
SLURM_BASE=/opt/sgi/slurm/${SLURM_VERSION}

# Path to configuration directory
#CONFDIR=${SLURM_BASE)/etc/slurm.conf
CONFDIR=/etc/slurm

# slurmd/slurmctld/slurmdbd startup parameters
SLURMD_OPTIONS="-N login -M"
SLURMCTLD_OPTIONS=""
SLURMDBD_OPTIONS=""

# Path to slurm apps relative to SLURM_BASE
BINDIR=${SLURM_BASE}/bin
SBINDIR=${SLURM_BASE}/sbin
LIBDIR=${SLURM_BASE}/lib64

# cluster extension
# common conf dir
SLURM_CLUSTER_CONFDIR=/share/home/slurm/etc
# stage dir (due to nfs root_squash)
SLURM_TMPDIR=/etc/slurm/.tmp
# configs to pull
SLURM_CLUSTER_CONFIG="slurm.conf gres.conf"
# login node scontrol workaround
SLURM_DAEMONS=slurmd
