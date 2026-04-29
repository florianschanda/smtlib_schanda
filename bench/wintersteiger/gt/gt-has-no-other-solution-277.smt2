(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.204509353080990052831111825071275234222412109375p-379 {+ 921028246329328 -379 (9.78232e-115)}
; Y = 1.441131044902384861217115030740387737751007080078125p632 {+ 1986677609443938 632 (2.56839e+190)}
; 1.204509353080990052831111825071275234222412109375p-379 > 1.441131044902384861217115030740387737751007080078125p632 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010000100 #b0011010001011010101110011001011100110101011111110000)))
(assert (= y (fp #b0 #b11001110111 #b0111000011101101111101101101001100011011001001100010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
