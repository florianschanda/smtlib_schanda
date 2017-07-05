(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1919491479587789317662327448488213121891021728515625p-65 {+ 864462111221241 -65 (3.23078e-020)}
; Y = -1.665798634626055818586110035539604723453521728515625p-770 {- 2998490482805690 -770 (-2.68241e-232)}
; 1.1919491479587789317662327448488213121891021728515625p-65 > -1.665798634626055818586110035539604723453521728515625p-770 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110111110 #b0011000100100011100101000101000011111010010111111001)))
(assert (= y (fp #b1 #b00011111101 #b1010101001110001110001111000000101110000101110111010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
