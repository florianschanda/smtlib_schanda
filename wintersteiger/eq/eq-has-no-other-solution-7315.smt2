(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.50469545959209316521310029202140867710113525390625p-269 {+ 2272946283754532 -269 (1.58628e-081)}
; Y = 1.9130646332535123921303465976961888372898101806640625p-1019 {+ 4112077542085697 -1019 (3.40537e-307)}
; 1.50469545959209316521310029202140867710113525390625p-269 = 1.9130646332535123921303465976961888372898101806640625p-1019 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011110010 #b1000000100110011101110001011110101100011010000100100)))
(assert (= y (fp #b0 #b00000000100 #b1110100110111110100110101001001011110101010001000001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
