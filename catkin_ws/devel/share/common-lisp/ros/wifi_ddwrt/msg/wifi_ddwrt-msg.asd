
(cl:in-package :asdf)

(defsystem "wifi_ddwrt-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SiteSurvey" :depends-on ("_package_SiteSurvey"))
    (:file "_package_SiteSurvey" :depends-on ("_package"))
    (:file "Network" :depends-on ("_package_Network"))
    (:file "_package_Network" :depends-on ("_package"))
  ))