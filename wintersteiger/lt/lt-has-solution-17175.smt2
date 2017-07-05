(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.022675839100243511126109297038055956363677978515625p-608 {- 102122900522170 -608 (-9.62721e-184)}
; Y = -1.577594921440802711032347360742278397083282470703125p246 {- 2601256272971890 246 (-1.78392e+074)}
; -1.022675839100243511126109297038055956363677978515625p-608 < -1.577594921440802711032347360742278397083282470703125p246 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110011111 #b0000010111001110000101010111001101011000010010111010)))
(assert (= y (fp #b1 #b10011110101 #b1001001111011101010000101100000111101100100001110010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
