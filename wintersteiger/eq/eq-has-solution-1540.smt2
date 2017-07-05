(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9656794913695978532786057257908396422863006591796875p-142 {+ 4349033797491451 -142 (3.52576e-043)}
; Y = 1.380961885963244650810111124883405864238739013671875p262 {+ 1715699807666430 262 (1.02339e+079)}
; 1.9656794913695978532786057257908396422863006591796875p-142 = 1.380961885963244650810111124883405864238739013671875p262 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101110001 #b1111011100110110110001010110100111011001101011111011)))
(assert (= y (fp #b0 #b10100000101 #b0110000110000110101101111101100100111100000011111110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
