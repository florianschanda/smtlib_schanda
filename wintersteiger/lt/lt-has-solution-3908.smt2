(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.321408071961945207561939241713844239711761474609375p-316 {+ 1447493273121686 -316 (9.89825e-096)}
; Y = 1.720558415161887122479811296216212213039398193359375p-979 {+ 3245106610021750 -979 (3.36747e-295)}
; 1.321408071961945207561939241713844239711761474609375p-316 < 1.720558415161887122479811296216212213039398193359375p-979 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011000011 #b0101001001000111110011001010010110111111001110010110)))
(assert (= y (fp #b0 #b00000101100 #b1011100001110110100001000010101111111010010101110110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
