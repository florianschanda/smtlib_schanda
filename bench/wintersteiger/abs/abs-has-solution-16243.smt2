(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8318879944684223204376394278369843959808349609375p374 {- 3746490461901976 374 (-7.04883e+112)}
; -1.8318879944684223204376394278369843959808349609375p374 | == 1.8318879944684223204376394278369843959808349609375p374
; [HW: 1.8318879944684223204376394278369843959808349609375p374] 

; mpf : + 3746490461901976 374
; mpfd: + 3746490461901976 374 (7.04883e+112) class: Pos. norm. non-zero
; hwf : + 3746490461901976 374 (7.04883e+112) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101110101 #b1101010011110110100111001001001000101101010010011000)))
(assert (= r (fp #b0 #b10101110101 #b1101010011110110100111001001001000101101010010011000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
