(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4284283087932891920246447625686414539813995361328125p-970 {+ 1929469571836429 -970 (1.43141e-292)}
; Y = 1.7982753238240831716865386624704115092754364013671875p314 {+ 3595112450913203 314 (6.00171e+094)}
; 1.4284283087932891920246447625686414539813995361328125p-970 = 1.7982753238240831716865386624704115092754364013671875p314 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000110101 #b0110110110101101011110100100011011110010101000001101)))
(assert (= y (fp #b0 #b10100111001 #b1100110001011011110001011000100100000111001110110011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
