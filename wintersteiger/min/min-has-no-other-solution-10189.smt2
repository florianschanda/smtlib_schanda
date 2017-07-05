(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.479130940838814467497286386787891387939453125p-920 {- 2157813926623360 -920 (-1.66882e-277)}
; Y = 1.7140549540074030421266115808975882828235626220703125p-937 {+ 3215817624789797 -937 (1.47543e-282)}
; -1.479130940838814467497286386787891387939453125p-920 m 1.7140549540074030421266115808975882828235626220703125p-937 == -1.479130940838814467497286386787891387939453125p-920
; [HW: -1.479130940838814467497286386787891387939453125p-920] 

; mpf : - 2157813926623360 -920
; mpfd: - 2157813926623360 -920 (-1.66882e-277) class: Neg. norm. non-zero
; hwf : - 2157813926623360 -920 (-1.66882e-277) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001100111 #b0111101010101000010100110100100101100111100010000000)))
(assert (= y (fp #b0 #b00001010110 #b1011011011001100010011100011001100000010001100100101)))
(assert (= r (fp #b1 #b00001100111 #b0111101010101000010100110100100101100111100010000000)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
