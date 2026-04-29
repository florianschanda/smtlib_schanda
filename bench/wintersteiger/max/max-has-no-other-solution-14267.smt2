(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6495830027619664548410582938231527805328369140625p98 {+ 2925461769185000 98 (5.22774e+029)}
; Y = -zero {- 0 -1023 (-0)}
; 1.6495830027619664548410582938231527805328369140625p98 M -zero == 1.6495830027619664548410582938231527805328369140625p98
; [HW: 1.6495830027619664548410582938231527805328369140625p98] 

; mpf : + 2925461769185000 98
; mpfd: + 2925461769185000 98 (5.22774e+029) class: Pos. norm. non-zero
; hwf : + 2925461769185000 98 (5.22774e+029) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001100001 #b1010011001001011000100100101100011100110011011101000)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b10001100001 #b1010011001001011000100100101100011100110011011101000)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
