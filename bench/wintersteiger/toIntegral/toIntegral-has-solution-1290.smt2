(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7354528803104598555506754564703442156314849853515625 728 {- 3312185317714745 728 (-2.45047e+219)}
; -1.7354528803104598555506754564703442156314849853515625 728 I == -1.7354528803104598555506754564703442156314849853515625 728
; [HW: -1.7354528803104598555506754564703442156314849853515625 728] 

; mpf : - 3312185317714745 728
; mpfd: - 3312185317714745 728 (-2.45047e+219) class: Neg. norm. non-zero
; hwf : - 3312185317714745 728 (-2.45047e+219) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011010111 #b1011110001000110101000111101010010101110101100111001)))
(assert (= r (fp #b1 #b11011010111 #b1011110001000110101000111101010010101110101100111001)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
