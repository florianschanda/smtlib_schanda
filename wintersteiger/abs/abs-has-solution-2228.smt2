(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3417988015274613378124968221527524292469024658203125p800 {+ 1539324955194757 800 (8.94713e+240)}
; 1.3417988015274613378124968221527524292469024658203125p800 | == 1.3417988015274613378124968221527524292469024658203125p800
; [HW: 1.3417988015274613378124968221527524292469024658203125p800] 

; mpf : + 1539324955194757 800
; mpfd: + 1539324955194757 800 (8.94713e+240) class: Pos. norm. non-zero
; hwf : + 1539324955194757 800 (8.94713e+240) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100011111 #b0101011110000000001000000101001001011111010110000101)))
(assert (= r (fp #b0 #b11100011111 #b0101011110000000001000000101001001011111010110000101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
