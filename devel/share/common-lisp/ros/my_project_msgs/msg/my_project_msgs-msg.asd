
(cl:in-package :asdf)

(defsystem "my_project_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CounterHistory" :depends-on ("_package_CounterHistory"))
    (:file "_package_CounterHistory" :depends-on ("_package"))
  ))