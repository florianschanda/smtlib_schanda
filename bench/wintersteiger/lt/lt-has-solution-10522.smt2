(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5553866792422852416422074384172447025775909423828125p-564 {- 2501239241682093 -564 (-2.57585e-170)}
; Y = -1.218241839919340652187429441255517303943634033203125p-705 {- 982873868937394 -705 (-7.23747e-213)}
; -1.5553866792422852416422074384172447025775909423828125p-564 < -1.218241839919340652187429441255517303943634033203125p-705 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111001011 #b1000111000101101110100100100011111111010110010101101)))
(assert (= y (fp #b1 #b00100111110 #b0011011111011110101100100111110100010010100010110010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
