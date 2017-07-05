(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1153290957905614977363484285888262093067169189453125p-121 {- 519396072827349 -121 (-4.1954e-037)}
; Y = -1.816452428436672761336012626998126506805419921875p-775 {- 3676974852473136 -775 (-9.14066e-234)}
; -1.1153290957905614977363484285888262093067169189453125p-121 < -1.816452428436672761336012626998126506805419921875p-775 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110000110 #b0001110110000110001101010010011010110010100111010101)))
(assert (= y (fp #b1 #b00011111000 #b1101000100000011000001101011111011100000000100110000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
