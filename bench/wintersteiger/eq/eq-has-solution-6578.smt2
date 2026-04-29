(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0871602417523356098882914011483080685138702392578125p386 {+ 392534832277341 386 (1.71345e+116)}
; Y = -1.8310592001776886394992516216007061302661895751953125p-745 {- 3742757904243061 -745 (-9.89363e-225)}
; 1.0871602417523356098882914011483080685138702392578125p386 = -1.8310592001776886394992516216007061302661895751953125p-745 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110000001 #b0001011001010000001000100011001111010110011101011101)))
(assert (= y (fp #b1 #b00100010110 #b1101010011000000010010111011010111001101100101110101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
