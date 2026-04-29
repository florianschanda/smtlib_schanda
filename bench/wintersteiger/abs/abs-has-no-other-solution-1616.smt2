(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.42050569092605716292609940865077078342437744140625p-923 {- 1893789272961764 -923 (-2.00335e-278)}
; -1.42050569092605716292609940865077078342437744140625p-923 | == 1.42050569092605716292609940865077078342437744140625p-923
; [HW: 1.42050569092605716292609940865077078342437744140625p-923] 

; mpf : + 1893789272961764 -923
; mpfd: + 1893789272961764 -923 (2.00335e-278) class: Pos. norm. non-zero
; hwf : + 1893789272961764 -923 (2.00335e-278) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001100100 #b0110101110100110010000101100111001001111001011100100)))
(assert (= r (fp #b0 #b00001100100 #b0110101110100110010000101100111001001111001011100100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
