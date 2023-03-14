#Windows App and IIS Role
class role::windowsiis {
#Include Windows App Role
    include role::windowsapp
    include profile::iis
}
