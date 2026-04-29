(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5506977162455424235076861805282533168792724609375p-378 {- 2480122029677208 -378 (-2.51877e-114)}
; Y = 1.6466802955584671774857952186721377074718475341796875p-854 {+ 2912389138104955 -854 (1.37086e-257)}
; -1.5506977162455424235076861805282533168792724609375p-378 * 1.6466802955584671774857952186721377074718475341796875p-854 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010000101 #b1000110011111010100001101000100101000001101010011000)))
(assert (= y (fp #b0 #b00010101001 #b1010010110001100110101110000000001100100001001111011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
