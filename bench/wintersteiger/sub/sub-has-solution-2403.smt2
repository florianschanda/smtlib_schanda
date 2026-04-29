(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.8461232812465036001725593450828455388545989990234375p683 {+ 3810600494131255 683 (7.4088e+205)}
; +zero - 1.8461232812465036001725593450828455388545989990234375p683 == -1.8461232812465036001725593450828455388545989990234375p683
; [HW: -1.8461232812465036001725593450828455388545989990234375p683] 

; mpf : - 3810600494131255 683
; mpfd: - 3810600494131255 683 (-7.4088e+205) class: Neg. norm. non-zero
; hwf : - 3810600494131255 683 (-7.4088e+205) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b11010101010 #b1101100010011011100010010000110101010110100000110111)))
(assert (= r (fp #b1 #b11010101010 #b1101100010011011100010010000110101010110100000110111)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
