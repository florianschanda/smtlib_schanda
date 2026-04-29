(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.080524611155471159662511126953177154064178466796875p-602 {- 362650608793934 -602 (-6.50994e-182)}
; Y = 1.6690722818410235195329960333765484392642974853515625p843 {+ 3013233679183161 843 (9.78952e+253)}
; -1.080524611155471159662511126953177154064178466796875p-602 = 1.6690722818410235195329960333765484392642974853515625p843 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110100101 #b0001010010011101010000101100101101101111100101001110)))
(assert (= y (fp #b0 #b11101001010 #b1010101101001000010100100011000100101010110100111001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
