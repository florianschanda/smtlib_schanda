(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9374294028120482291654980144812725484371185302734375 183 {+ 4221806709190487 183 (2.37528e+055)}
; 1.9374294028120482291654980144812725484371185302734375 183 I == 1.9374294028120482291654980144812725484371185302734375 183
; [HW: 1.9374294028120482291654980144812725484371185302734375 183] 

; mpf : + 4221806709190487 183
; mpfd: + 4221806709190487 183 (2.37528e+055) class: Pos. norm. non-zero
; hwf : + 4221806709190487 183 (2.37528e+055) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010110110 #b1110111111111011010111111001001101100010111101010111)))
(assert (= r (fp #b0 #b10010110110 #b1110111111111011010111111001001101100010111101010111)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
