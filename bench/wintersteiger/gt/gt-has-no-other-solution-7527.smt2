(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.05650199782693920980136681464500725269317626953125p-792 {- 254462376359092 -792 (-4.05615e-239)}
; Y = -1.29138666099963028699448841507546603679656982421875p799 {- 1312288857898668 799 (-4.30549e+240)}
; -1.05650199782693920980136681464500725269317626953125p-792 > -1.29138666099963028699448841507546603679656982421875p799 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011100111 #b0000111001110110111010100011100011010011010010110100)))
(assert (= y (fp #b1 #b11100011110 #b0100101010011000010100001111001101111011111010101100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
