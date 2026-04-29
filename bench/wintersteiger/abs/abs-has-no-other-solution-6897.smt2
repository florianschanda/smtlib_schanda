(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8532985865661790736425018621957860887050628662109375p-767 {+ 3842915196495215 -767 (2.38747e-231)}
; 1.8532985865661790736425018621957860887050628662109375p-767 | == 1.8532985865661790736425018621957860887050628662109375p-767
; [HW: 1.8532985865661790736425018621957860887050628662109375p-767] 

; mpf : + 3842915196495215 -767
; mpfd: + 3842915196495215 -767 (2.38747e-231) class: Pos. norm. non-zero
; hwf : + 3842915196495215 -767 (2.38747e-231) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100000000 #b1101101001110001110001101011001100000110010101101111)))
(assert (= r (fp #b0 #b00100000000 #b1101101001110001110001101011001100000110010101101111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
