(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.046988152118288883940522282500751316547393798828125p473 {- 211615824370754 473 (-2.55346e+142)}
; Y = 1.777079157431197931060751216136850416660308837890625p-48 {+ 3499653403844522 -48 (6.31345e-015)}
; -1.046988152118288883940522282500751316547393798828125p473 = 1.777079157431197931060751216136850416660308837890625p-48 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111011000 #b0000110000000111011010100110000010100101110001000010)))
(assert (= y (fp #b0 #b01111001111 #b1100011011101110101010001101111110010001111110101010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
