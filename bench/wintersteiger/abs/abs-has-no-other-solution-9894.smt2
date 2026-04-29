(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3384213773736919339540918372222222387790679931640625p-671 {+ 1524114389034369 -671 (1.36605e-202)}
; 1.3384213773736919339540918372222222387790679931640625p-671 | == 1.3384213773736919339540918372222222387790679931640625p-671
; [HW: 1.3384213773736919339540918372222222387790679931640625p-671] 

; mpf : + 1524114389034369 -671
; mpfd: + 1524114389034369 -671 (1.36605e-202) class: Pos. norm. non-zero
; hwf : + 1524114389034369 -671 (1.36605e-202) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101100000 #b0101011010100010110010001000110000010110010110000001)))
(assert (= r (fp #b0 #b00101100000 #b0101011010100010110010001000110000010110010110000001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
