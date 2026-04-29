(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.751994299307607860782809439115226268768310546875p-708 {+ 3386681246146480 -708 (1.30106e-213)}
; Y = -1.71842323666373797408368773176334798336029052734375p622 {- 3235490620933116 622 (-2.9908e+187)}
; 1.751994299307607860782809439115226268768310546875p-708 > -1.71842323666373797408368773176334798336029052734375p622 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100111011 #b1100000010000010101100101100101001001101111110110000)))
(assert (= y (fp #b1 #b11001101101 #b1011011111101010100101011101001000101000001111111100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
