(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3347409321663248338296625661314465105533599853515625 688 {- 1507539137369913 688 (-1.71409e+207)}
; -1.3347409321663248338296625661314465105533599853515625 688 I == -1.3347409321663248338296625661314465105533599853515625 688
; [HW: -1.3347409321663248338296625661314465105533599853515625 688] 

; mpf : - 1507539137369913 688
; mpfd: - 1507539137369913 688 (-1.71409e+207) class: Neg. norm. non-zero
; hwf : - 1507539137369913 688 (-1.71409e+207) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010101111 #b0101010110110001100101001110110001001001011100111001)))
(assert (= r (fp #b1 #b11010101111 #b0101010110110001100101001110110001001001011100111001)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
