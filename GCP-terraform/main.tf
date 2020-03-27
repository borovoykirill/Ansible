provider "google" {
  credentials = "${file("dev-001-project-955a035bd555.json")}"
  project     = "${var.Project_name}"
  region      = "${var.Region}"
}

resource "google_compute_instance" "master" {
  name         = "${var.Master_name}"
  zone         = "${var.Zone}"
  machine_type = "${var.Type_Machine}"

  boot_disk {
    initialize_params {
      size  = "${var.Size_Disk}"
      type  = "${var.Type_Disk}"
      image = "${var.Image_OS}"
    }
  }

  tags = ["ansible-master"]

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  labels = {
    osfamily          = "${var.OS_Family}"
    wayofinstallation = "${var.WayOfInstallation}"
  }

  metadata = {
    disable-legacy-endpoints = "true"
  }

  metadata_startup_script = <<EOF
  sudo apt-get update -y
  sudo apt install software-properties-common
  sudo apt-add-repository ppa:ansible/ansible
  sudo apt update -y
  sudo apt-get install ansible -y
  sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
  sudo sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
  sudo service ssh restart
EOF
}

resource "google_compute_instance" "node" {
  count        = "${var.Instance_count}"
  name         = "node-${count.index}"
  zone         = "${var.Zone}"
  machine_type = "${var.Type_Machine}"

  tags = ["ansible-node"]

  labels = {
    osfamily          = "${var.OS_Family}"
    wayofinstallation = "${var.WayOfInstallation}"
  }

  boot_disk {
    initialize_params {
      size  = "${var.Size_Disk}"
      type  = "${var.Type_Disk}"
      image = "${var.Image_OS}"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    disable-legacy-endpoints = "true"
  }

  metadata_startup_script = <<EOF
  sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
  sudo sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
  sudo service ssh restart
EOF
}

resource "google_dns_managed_zone" "kbaravoy-zone" {
  name       = "kbaravoy-zone"
  dns_name   = "kbaravoy.playpit.net."
  visibility = "public"
}
