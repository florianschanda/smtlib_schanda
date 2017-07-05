(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2949792849351025036952478330931626260280609130859375p437 {+ 1328468597715743 437 (4.5959e+131)}
; Y = 1.9663999007020034337500646870466880500316619873046875p-503 {+ 4352278232692427 -503 (7.50903e-152)}
; 1.2949792849351025036952478330931626260280609130859375p437 < 1.9663999007020034337500646870466880500316619873046875p-503 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110110100 #b0100101110000011110000110010110111001011001100011111)))
(assert (= y (fp #b0 #b01000001000 #b1111011101100101111110111110000001011111011011001011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
