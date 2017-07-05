(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2850713259694719337034030104405246675014495849609375p-439 {+ 1283847117410127 -439 (9.0523e-133)}
; Y = -1.5995756700899621538525252617546357214450836181640625p-124 {- 2700248764397569 -124 (-7.52117e-038)}
; 1.2850713259694719337034030104405246675014495849609375p-439 > -1.5995756700899621538525252617546357214450836181640625p-124 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001001000 #b0100100011111010011011110011011000010000111101001111)))
(assert (= y (fp #b1 #b01110000011 #b1001100101111101110010101000011010000011100000000001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
