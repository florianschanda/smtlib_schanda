(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0127959513780668832083620145567692816257476806640625p-932 {+ 57627841858113 -932 (2.78975e-281)}
; Y = 1.0801813906569648349176304691354744136333465576171875p137 {+ 361104881084755 137 (1.88194e+041)}
; 1.0127959513780668832083620145567692816257476806640625p-932 = 1.0801813906569648349176304691354744136333465576171875p137 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001011011 #b0000001101000110100110000111000010110000101001000001)))
(assert (= y (fp #b0 #b10010001000 #b0001010010000110110001001000001010011110100101010011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
