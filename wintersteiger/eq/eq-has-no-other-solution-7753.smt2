(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8261709641415546645504264233750291168689727783203125p162 {- 3720743246252229 162 (-1.06758e+049)}
; Y = -1.833930167184557813442324913921765983104705810546875p122 {- 3755687590185390 122 (-9.75085e+036)}
; -1.8261709641415546645504264233750291168689727783203125p162 = -1.833930167184557813442324913921765983104705810546875p122 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010100001 #b1101001101111111111100001011011111100100100011000101)))
(assert (= y (fp #b1 #b10001111001 #b1101010101111100011100101000101100110100100110101110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
