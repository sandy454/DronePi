
(cl:in-package :asdf)

(defsystem "remote-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "dof" :depends-on ("_package_dof"))
    (:file "_package_dof" :depends-on ("_package"))
  ))