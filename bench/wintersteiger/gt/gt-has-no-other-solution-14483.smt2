(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.929529157479553891363366346922703087329864501953125p710 {- 4186227167254930 710 (-1.03932e+214)}
; Y = -1.6315448109131744924837903454317711293697357177734375p-919 {- 2844224975096343 -919 (-3.68157e-277)}
; -1.929529157479553891363366346922703087329864501953125p710 > -1.6315448109131744924837903454317711293697357177734375p-919 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011000101 #b1110110111110101100111110111010000001101100110010010)))
(assert (= y (fp #b1 #b00001101000 #b1010000110101100111010111011010011010100101000010111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
