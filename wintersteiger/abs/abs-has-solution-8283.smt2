(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.40578651551067057567934170947410166263580322265625p-681 {+ 1827500000045828 -681 (1.40117e-205)}
; 1.40578651551067057567934170947410166263580322265625p-681 | == 1.40578651551067057567934170947410166263580322265625p-681
; [HW: 1.40578651551067057567934170947410166263580322265625p-681] 

; mpf : + 1827500000045828 -681
; mpfd: + 1827500000045828 -681 (1.40117e-205) class: Pos. norm. non-zero
; hwf : + 1827500000045828 -681 (1.40117e-205) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101010110 #b0110011111100001101000000000010101000110101100000100)))
(assert (= r (fp #b0 #b00101010110 #b0110011111100001101000000000010101000110101100000100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
