(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4457226104908305064356000002590008080005645751953125p-926 {+ 2007356182517109 -926 (2.54864e-279)}
; Y = 1.57260830256483874478590223588980734348297119140625p388 {+ 2578798538060260 388 (9.91423e+116)}
; 1.4457226104908305064356000002590008080005645751953125p-926 = 1.57260830256483874478590223588980734348297119140625p388 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001100001 #b0111001000011010111000001000001100100101010101110101)))
(assert (= y (fp #b0 #b10110000011 #b1001001010010110011101010010110011101111000111100100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
