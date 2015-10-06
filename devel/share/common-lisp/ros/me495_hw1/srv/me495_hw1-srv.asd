
(cl:in-package :asdf)

(defsystem "me495_hw1-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ME495Srv" :depends-on ("_package_ME495Srv"))
    (:file "_package_ME495Srv" :depends-on ("_package"))
  ))