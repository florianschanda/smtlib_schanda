(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3205073715143986756714866714901290833950042724609375p-828 {+ 1443436878921743 -828 (7.37742e-250)}
; Y = -1.8054815875205003639081269284361042082309722900390625p-748 {- 3627566577411121 -748 (-1.21943e-225)}
; Z = +zero {+ 0 -1023 (0)}
; 1.3205073715143986756714866714901290833950042724609375p-828 x -1.8054815875205003639081269284361042082309722900390625p-748 +zero == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011000011 #b0101001000001100110001010110011011001000000000001111)))
(assert (= y (fp #b1 #b00100010011 #b1100111000110100000010101001001111101110010000110001)))
(assert (= z (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
