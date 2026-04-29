(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.759372458275676454064750942052341997623443603515625p-821 {+ 3419909520125754 -821 (1.25815e-247)}
; Y = 1.36456621845070547038858421728946268558502197265625p-133 {+ 1641860285566468 -133 (1.25316e-040)}
; 1.759372458275676454064750942052341997623443603515625p-821 < 1.36456621845070547038858421728946268558502197265625p-133 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011001010 #b1100001001100110001110111100000111000110111100111010)))
(assert (= y (fp #b0 #b01101111010 #b0101110101010100001101100011000101111000111000000100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
