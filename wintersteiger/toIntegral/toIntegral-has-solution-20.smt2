(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.858460962983334407994107095873914659023284912109375 859 {+ 3866164473003862 859 (7.14364e+258)}
; 1.858460962983334407994107095873914659023284912109375 859 I == 1.858460962983334407994107095873914659023284912109375 859
; [HW: 1.858460962983334407994107095873914659023284912109375 859] 

; mpf : + 3866164473003862 859
; mpfd: + 3866164473003862 859 (7.14364e+258) class: Pos. norm. non-zero
; hwf : + 3866164473003862 859 (7.14364e+258) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101011010 #b1101101111000100000110010000000011100111111101010110)))
(assert (= r (fp #b0 #b11101011010 #b1101101111000100000110010000000011100111111101010110)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
