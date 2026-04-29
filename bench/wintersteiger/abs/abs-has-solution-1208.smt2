(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3510827936952816141769062596722505986690521240234375p269 {- 1581136338862263 269 (-1.28159e+081)}
; -1.3510827936952816141769062596722505986690521240234375p269 | == 1.3510827936952816141769062596722505986690521240234375p269
; [HW: 1.3510827936952816141769062596722505986690521240234375p269] 

; mpf : + 1581136338862263 269
; mpfd: + 1581136338862263 269 (1.28159e+081) class: Pos. norm. non-zero
; hwf : + 1581136338862263 269 (1.28159e+081) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100001100 #b0101100111100000100011111101110100011100000010110111)))
(assert (= r (fp #b0 #b10100001100 #b0101100111100000100011111101110100011100000010110111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
