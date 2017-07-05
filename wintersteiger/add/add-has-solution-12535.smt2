(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6519809760212733618089941955986432731151580810546875p851 {- 2936261280662059 851 (-2.48045e+256)}
; Y = -1.85436835806187527708743800758384168148040771484375p129 {- 3847733019004604 129 (-1.26202e+039)}
; -1.6519809760212733618089941955986432731151580810546875p851 + -1.85436835806187527708743800758384168148040771484375p129 == -1.6519809760212733618089941955986432731151580810546875p851
; [HW: -1.6519809760212733618089941955986432731151580810546875p851] 

; mpf : - 2936261280662059 851
; mpfd: - 2936261280662059 851 (-2.48045e+256) class: Neg. norm. non-zero
; hwf : - 2936261280662059 851 (-2.48045e+256) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101010010 #b1010011011101000001110011010100110100000001000101011)))
(assert (= y (fp #b1 #b10010000000 #b1101101010110111111000100111110010011100111010111100)))
(assert (= r (fp #b1 #b11101010010 #b1010011011101000001110011010100110100000001000101011)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
