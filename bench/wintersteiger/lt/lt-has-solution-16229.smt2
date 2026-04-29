(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.718120996575283054852434361237101256847381591796875p-999 {- 3234129452583374 -999 (-3.20692e-301)}
; Y = 1.650261018615477137672087337705306708812713623046875p-119 {+ 2928515281130222 -119 (2.48304e-036)}
; -1.718120996575283054852434361237101256847381591796875p-999 < 1.650261018615477137672087337705306708812713623046875p-119 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000011000 #b1011011111010110110001110001001011011100100111001110)))
(assert (= y (fp #b0 #b01110001000 #b1010011001110111100000011001000011010001001011101110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
