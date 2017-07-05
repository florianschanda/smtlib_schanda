(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0287556767349013142620606231503188610076904296875p257 {+ 129504055028088 257 (2.38244e+077)}
; Y = 1.612194010587604697803953968104906380176544189453125p15 {+ 2757076717960786 15 (52828.4)}
; 1.0287556767349013142620606231503188610076904296875p257 > 1.612194010587604697803953968104906380176544189453125p15 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100000000 #b0000011101011100100010000011001100100110100101111000)))
(assert (= y (fp #b0 #b10000001110 #b1001110010111000101111110010011001000111111001010010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
