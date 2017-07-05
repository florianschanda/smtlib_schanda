(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1590491702281473518354459883994422852993011474609375p719 {+ 716293783773071 719 (3.19646e+216)}
; 1.1590491702281473518354459883994422852993011474609375p719 | == 1.1590491702281473518354459883994422852993011474609375p719
; [HW: 1.1590491702281473518354459883994422852993011474609375p719] 

; mpf : + 716293783773071 719
; mpfd: + 716293783773071 719 (3.19646e+216) class: Pos. norm. non-zero
; hwf : + 716293783773071 719 (3.19646e+216) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001110 #b0010100010110111011100100100100010010101111110001111)))
(assert (= r (fp #b0 #b11011001110 #b0010100010110111011100100100100010010101111110001111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
