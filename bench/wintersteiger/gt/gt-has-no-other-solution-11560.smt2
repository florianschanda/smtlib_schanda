(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6809895845978586326197046219022013247013092041015625p-727 {- 3066904439438105 -727 (-2.38099e-219)}
; Y = -1.58376101919326917055741432704962790012359619140625p978 {- 2629025908512228 978 (-4.046e+294)}
; -1.6809895845978586326197046219022013247013092041015625p-727 > -1.58376101919326917055741432704962790012359619140625p978 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100101000 #b1010111001010101010101010101101011000011101100011001)))
(assert (= y (fp #b1 #b11111010001 #b1001010101110001010111001011011000011101010111100100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
