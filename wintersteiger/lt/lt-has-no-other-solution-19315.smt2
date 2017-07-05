(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9377020966008478009001692043966613709926605224609375p-950 {- 4223034812836111 -950 (-2.03606e-286)}
; Y = 0.4917628157080418116464670674758963286876678466796875p-1022 {+ 2214702833577403 -1023 (1.09421e-308)}
; -1.9377020966008478009001692043966613709926605224609375p-950 < 0.4917628157080418116464670674758963286876678466796875p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001001001 #b1111000000001101001111101001111001001010100100001111)))
(assert (= y (fp #b0 #b00000000000 #b0111110111100100001010101111101011011010110110111011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
