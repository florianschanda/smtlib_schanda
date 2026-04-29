(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4236277076881742598146729505970142781734466552734375p-454 {+ 1907849586488279 -454 (3.0604e-137)}
; Y = -1.3009219317816611560800765801104716956615447998046875p229 {- 1355231899839499 229 (-1.12233e+069)}
; 1.4236277076881742598146729505970142781734466552734375p-454 = -1.3009219317816611560800765801104716956615447998046875p229 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000111001 #b0110110001110010110111011000111000110011001111010111)))
(assert (= y (fp #b1 #b10011100100 #b0100110100001001001110000011111110100110110000001011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
