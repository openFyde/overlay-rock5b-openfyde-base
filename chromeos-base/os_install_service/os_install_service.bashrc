# Copyright (c) 2022 Fyde Innovations Limited and the openFyde Authors.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_install_rock5b_os_install_service() {
    touch "${S}"/conf/os_install_service-seccomp-${ARCH}.policy
}

cros_post_src_install_rock5b_os_install_service() {
    rm /usr/share/policy/os_install_service-seccomp.policy
}

cros_pre_src_prepare_rock5b_os_install_service() {
  eapply ${ROCK5B_OPENFYDE_BASE_BASHRC_FILEPATH}/0001-remove-os_install_service-seccomp-policy-for-minijail.patch
}
