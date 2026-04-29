(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6305227241964523887673976787482388317584991455078125p610 {+ 2839621905739773 610 (6.92826e+183)}
; Y = -1.229198987502516882130976227927021682262420654296875p-151 {- 1032220474710030 -151 (-4.30619e-046)}
; 1.6305227241964523887673976787482388317584991455078125p610 > -1.229198987502516882130976227927021682262420654296875p-151 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001100001 #b1010000101101001111011111110111111001110111111111101)))
(assert (= y (fp #b1 #b01101101000 #b0011101010101100110010001110101110011001100000001110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
