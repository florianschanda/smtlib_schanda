(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8376509085623329298186945379711687564849853515625p-447 {+ 3772444319667880 -447 (5.05656e-135)}
; 1.8376509085623329298186945379711687564849853515625p-447 | == 1.8376509085623329298186945379711687564849853515625p-447
; [HW: 1.8376509085623329298186945379711687564849853515625p-447] 

; mpf : + 3772444319667880 -447
; mpfd: + 3772444319667880 -447 (5.05656e-135) class: Pos. norm. non-zero
; hwf : + 3772444319667880 -447 (5.05656e-135) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001000000 #b1101011001110000010010100011100110111101011010101000)))
(assert (= r (fp #b0 #b01001000000 #b1101011001110000010010100011100110111101011010101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
