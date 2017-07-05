(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2662242667298910792084143395186401903629302978515625p-543 {- 1198967508441721 -543 (-4.39767e-164)}
; Y = 1.1110183309719363631273836290347389876842498779296875p-219 {+ 499982113996507 -219 (1.31872e-066)}
; -1.2662242667298910792084143395186401903629302978515625p-543 > 1.1110183309719363631273836290347389876842498779296875p-219 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111100000 #b0100010000100111010001100000011100000001101001111001)))
(assert (= y (fp #b0 #b01100100100 #b0001110001101011101100101000010011000111111011011011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
