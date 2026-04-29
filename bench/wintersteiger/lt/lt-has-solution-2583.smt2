(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2041455959312161727581269587972201406955718994140625p77 {- 919390029765153 77 (-1.81965e+023)}
; Y = -1.882252748621822124874825021834112703800201416015625p-46 {- 3973313149939834 -46 (-2.67484e-014)}
; -1.2041455959312161727581269587972201406955718994140625p77 < -1.882252748621822124874825021834112703800201416015625p-46 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001001100 #b0011010001000010111000101100001000100101101000100001)))
(assert (= y (fp #b1 #b01111010001 #b1110000111011011010100001110111000100011000001111010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
