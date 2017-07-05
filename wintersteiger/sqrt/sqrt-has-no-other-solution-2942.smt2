(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.38886215427929027299569497699849307537078857421875p-322 {+ 1751279453110700 -322 (1.62555e-097)}
; 1.38886215427929027299569497699849307537078857421875p-322 S == 1.17849995938875196088702068664133548736572265625p-161
; [HW: 1.17849995938875196088702068664133548736572265625p-161] 

; mpf : + 803892350588832 -161
; mpfd: + 803892350588832 -161 (4.03181e-049) class: Pos. norm. non-zero
; hwf : + 803892350588832 -161 (4.03181e-049) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010111101 #b0110001110001100011110000101101101001000000110101100)))
(assert (= r (fp #b0 #b01101011110 #b0010110110110010001011000101111111101001011110100000)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
