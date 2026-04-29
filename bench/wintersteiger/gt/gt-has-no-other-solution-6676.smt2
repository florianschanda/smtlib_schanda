(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6244219519528673156827380807953886687755584716796875p92 {+ 2812146470136891 92 (8.04375e+027)}
; Y = 1.3201866021136832163307417431497015058994293212890625p1013 {+ 1441992261968209 1013 (1.15883e+305)}
; 1.6244219519528673156827380807953886687755584716796875p92 > 1.3201866021136832163307417431497015058994293212890625p1013 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001011011 #b1001111111011010000111011111011010001010110000111011)))
(assert (= y (fp #b0 #b11111110100 #b0101000111110111101111111100100010110010000101010001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
