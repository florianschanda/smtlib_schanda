(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8429201283976268666009445951203815639019012451171875p-938 {- 3796174776154643 -938 (-7.93178e-283)}
; Y = -1.6219562066554356061232056163134984672069549560546875p625 {- 2801041740534187 625 (-2.25832e+188)}
; -1.8429201283976268666009445951203815639019012451171875p-938 > -1.6219562066554356061232056163134984672069549560546875p625 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001010101 #b1101011111001001100111010001000010011011101000010011)))
(assert (= y (fp #b1 #b11001110000 #b1001111100111000100001011001111100100001000110101011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
