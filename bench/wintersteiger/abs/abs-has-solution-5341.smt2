(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.255883375813544144961042547947727143764495849609375p-896 {- 1152396275964182 -896 (-2.37724e-270)}
; -1.255883375813544144961042547947727143764495849609375p-896 | == 1.255883375813544144961042547947727143764495849609375p-896
; [HW: 1.255883375813544144961042547947727143764495849609375p-896] 

; mpf : + 1152396275964182 -896
; mpfd: + 1152396275964182 -896 (2.37724e-270) class: Pos. norm. non-zero
; hwf : + 1152396275964182 -896 (2.37724e-270) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001111111 #b0100000110000001100100101010101010110101100100010110)))
(assert (= r (fp #b0 #b00001111111 #b0100000110000001100100101010101010110101100100010110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
