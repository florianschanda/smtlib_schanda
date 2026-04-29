(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.029491797428493615740308086969889700412750244140625p141 {- 132819247909450 141 (-2.8698e+042)}
; Y = -1.0358000017356865374296148729627020657062530517578125p-826 {- 161228874476701 -826 (-2.31473e-249)}
; -1.029491797428493615740308086969889700412750244140625p141 < -1.0358000017356865374296148729627020657062530517578125p-826 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010001100 #b0000011110001100110001100100000101110100101001001010)))
(assert (= y (fp #b1 #b00011000101 #b0000100100101010001100000101110010100110110010011101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
