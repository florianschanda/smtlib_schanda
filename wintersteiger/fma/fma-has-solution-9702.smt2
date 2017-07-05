(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3792072693772554625724069410352967679500579833984375p918 {- 1707797717063591 918 (-3.05609e+276)}
; Y = -1.41383182079358249438882921822369098663330078125p752 {- 1863732833920032 752 (-3.3493e+226)}
; Z = -1.2731158244972835547059730743058025836944580078125p507 {- 1230004325434952 507 (-5.33428e+152)}
; -1.3792072693772554625724069410352967679500579833984375p918 x -1.41383182079358249438882921822369098663330078125p752 -1.2731158244972835547059730743058025836944580078125p507 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110010101 #b0110000100010011101110100100010001100001011110100111)))
(assert (= y (fp #b1 #b11011101111 #b0110100111110000111000011101100001011010010000100000)))
(assert (= z (fp #b1 #b10111111010 #b0100010111101010111010110010111000111100011001001000)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)
