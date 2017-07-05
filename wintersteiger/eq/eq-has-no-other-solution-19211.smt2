(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5925650502326522683915754896588623523712158203125p-372 {- 2668675739420552 -372 (-1.65554e-112)}
; Y = -1.761844442930267096159013817668892443180084228515625p-484 {- 3431042349295034 -484 (-3.52736e-146)}
; -1.5925650502326522683915754896588623523712158203125p-372 = -1.761844442930267096159013817668892443180084228515625p-484 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010001011 #b1001011110110010010101111101011110000000011110001000)))
(assert (= y (fp #b1 #b01000011011 #b1100001100001000001111001100011100000110010110111010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
