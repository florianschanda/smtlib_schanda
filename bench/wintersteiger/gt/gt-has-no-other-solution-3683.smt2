(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3958436885282072825731347620603628456592559814453125p64 {- 1782721488152597 64 (-2.57488e+019)}
; Y = -1.1452781878730096121188353208708576858043670654296875p897 {- 654274792769947 897 (-1.21009e+270)}
; -1.3958436885282072825731347620603628456592559814453125p64 > -1.1452781878730096121188353208708576858043670654296875p897 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111111 #b0110010101010110000000110001000010001110100000010101)))
(assert (= y (fp #b1 #b11110000000 #b0010010100110000111100111000100110111100100110011011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
