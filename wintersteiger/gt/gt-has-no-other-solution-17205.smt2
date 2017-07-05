(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.86163454870455158385311733582057058811187744140625p-731 {+ 3880457032475364 -731 (1.64804e-220)}
; Y = -1.2252931636484272193143851836794055998325347900390625p166 {- 1014630207856177 166 (-1.14609e+050)}
; 1.86163454870455158385311733582057058811187744140625p-731 > -1.2252931636484272193143851836794055998325347900390625p166 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100100100 #b1101110010010100000101001110111111001010001011100100)))
(assert (= y (fp #b1 #b10010100101 #b0011100110101100110100000001000111100001111000110001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
