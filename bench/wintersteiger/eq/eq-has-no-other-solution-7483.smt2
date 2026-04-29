(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0832481514646132847445869629154913127422332763671875p-86 {+ 374916343915315 -86 (1.40007e-026)}
; Y = -1.7118345135547150537291827276931144297122955322265625p956 {- 3205817649994473 956 (-1.04265e+288)}
; 1.0832481514646132847445869629154913127422332763671875p-86 = -1.7118345135547150537291827276931144297122955322265625p956 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110101001 #b0001010101001111110000000011011111111110001100110011)))
(assert (= y (fp #b1 #b11110111011 #b1011011000111010110010010110001111100001101011101001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
