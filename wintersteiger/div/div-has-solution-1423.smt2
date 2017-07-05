(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 0.399133071555063612123603888903744518756866455078125p-1022 {+ 1797535552326626 -1023 (8.88101e-309)}
; Y = -1.70259652628715674183013106812722980976104736328125p477 {- 3164213453978644 477 (-6.64385e+143)}
; 0.399133071555063612123603888903744518756866455078125p-1022 / -1.70259652628715674183013106812722980976104736328125p477 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0110011000101101100101011100000100010100101111100010)))
(assert (= y (fp #b1 #b10111011100 #b1011001111011101010111011010111010101111110000010100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
