(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.94404398541387646304201552993617951869964599609375p952 {- 4251596140931292 952 (-7.40052e+286)}
; Y = -1.18205568836878693872449730406515300273895263671875p447 {- 819905930298348 447 (-4.29582e+134)}
; -1.94404398541387646304201552993617951869964599609375p952 = -1.18205568836878693872449730406515300273895263671875p447 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110110111 #b1111000110101100110111011101101101010110100011011100)))
(assert (= y (fp #b1 #b10110111110 #b0010111010011011001100111001101110011000001111101100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
