(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.361142236898610580198010211461223661899566650390625p-60 {+ 1626440043524330 -60 (1.1806e-018)}
; Y = 1.478138380350899172555045879562385380268096923828125p476 {+ 2153343831579842 476 (2.88399e+143)}
; 1.361142236898610580198010211461223661899566650390625p-60 < 1.478138380350899172555045879562385380268096923828125p476 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111000011 #b0101110001110011110100010101000010101111000011101010)))
(assert (= y (fp #b0 #b10111011011 #b0111101001100111010001101110001010010001110011000010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
