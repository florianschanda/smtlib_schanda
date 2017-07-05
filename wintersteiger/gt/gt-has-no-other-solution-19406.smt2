(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.62790343759942768286919090314768254756927490234375p49 {+ 2827825687597436 49 (9.16428e+014)}
; Y = 1.0851428067233503949040596125996671617031097412109375p-208 {+ 383449112632559 -208 (2.63784e-063)}
; 1.62790343759942768286919090314768254756927490234375p49 > 1.0851428067233503949040596125996671617031097412109375p-208 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000110000 #b1010000010111110010001111001100110001001000101111100)))
(assert (= y (fp #b0 #b01100101111 #b0001010111001011111010110100001001011101110011101111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
