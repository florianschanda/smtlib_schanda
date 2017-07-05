(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1200136457099991726948928771889768540859222412109375p-439 {- 540493410098927 -439 (-7.8896e-133)}
; Y = -1.4548753198366106698102839800412766635417938232421875p-1021 {- 2048576320916195 -1021 (-6.47441e-308)}
; -1.1200136457099991726948928771889768540859222412109375p-439 = -1.4548753198366106698102839800412766635417938232421875p-1021 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001001000 #b0001111010111001001101101101101101100101111011101111)))
(assert (= y (fp #b1 #b00000000010 #b0111010001110010101101010111111001110100101011100011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
