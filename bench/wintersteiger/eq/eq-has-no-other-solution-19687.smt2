(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3236278318678691423571081031695939600467681884765625p-341 {- 1457490183006857 -341 (-2.95486e-103)}
; Y = -1.7946882471250076296342967907548882067203521728515625p-575 {- 3578957693627897 -575 (-1.45125e-173)}
; -1.3236278318678691423571081031695939600467681884765625p-341 = -1.7946882471250076296342967907548882067203521728515625p-575 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010101010 #b0101001011011001010001100000100111110010101010001001)))
(assert (= y (fp #b1 #b00111000000 #b1100101101110000101100000101111111101010110111111001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
