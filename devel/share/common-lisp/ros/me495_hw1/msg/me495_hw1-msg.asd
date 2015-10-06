
(cl:in-package :asdf)

(defsystem "me495_hw1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ME495Pub" :depends-on ("_package_ME495Pub"))
    (:file "_package_ME495Pub" :depends-on ("_package"))
  ))