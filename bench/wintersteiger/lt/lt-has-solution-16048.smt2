(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7114820906603955830149743633228354156017303466796875p-18 {- 3204230478378939 -18 (-6.52879e-006)}
; Y = 1.8651522617477545029629482087329961359500885009765625p-141 {+ 3896299403625929 -141 (6.69091e-043)}
; -1.7114820906603955830149743633228354156017303466796875p-18 < 1.8651522617477545029629482087329961359500885009765625p-141 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111101101 #b1011011000100011101100001011011100010011011110111011)))
(assert (= y (fp #b0 #b01101110010 #b1101110101111010100111100101111001000100010111001001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
