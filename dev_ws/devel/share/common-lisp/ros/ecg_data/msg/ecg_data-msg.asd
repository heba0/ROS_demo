
(cl:in-package :asdf)

(defsystem "ecg_data-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "data_struct" :depends-on ("_package_data_struct"))
    (:file "_package_data_struct" :depends-on ("_package"))
  ))