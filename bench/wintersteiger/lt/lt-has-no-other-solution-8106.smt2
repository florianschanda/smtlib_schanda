(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.63359134617633916519707781844772398471832275390625p1019 {+ 2853441750544932 1019 (9.17717e+306)}
; Y = 1.3495107924914362396151545908651314675807952880859375p-827 {+ 1574056674826399 -827 (1.50789e-249)}
; 1.63359134617633916519707781844772398471832275390625p1019 < 1.3495107924914362396151545908651314675807952880859375p-827 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111111010 #b1010001000110011000010101101111011011011001000100100)))
(assert (= y (fp #b0 #b00011000100 #b0101100101111001100010100000111101011001100010011111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
