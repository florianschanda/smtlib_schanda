(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.991928198239911740330398970399983227252960205078125p-176 {+ 4467247463971554 -176 (2.07967e-053)}
; Y = 1.5139495599660135471964395037502981722354888916015625p314 {+ 2314623046750169 314 (5.05278e+094)}
; 1.991928198239911740330398970399983227252960205078125p-176 < 1.5139495599660135471964395037502981722354888916015625p314 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101001111 #b1111110111101111000000011010001101101011101011100010)))
(assert (= y (fp #b0 #b10100111001 #b1000001110010010001100101100011111011000111111011001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
