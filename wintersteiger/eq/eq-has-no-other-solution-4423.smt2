(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0016898658402759725305486426805146038532257080078125p-701 {- 7610479168573 -701 (-9.52152e-212)}
; Y = 1.876180635354577130868847234523855149745941162109375p-990 {+ 3945966782892118 -990 (1.79299e-298)}
; -1.0016898658402759725305486426805146038532257080078125p-701 = 1.876180635354577130868847234523855149745941162109375p-990 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101000010 #b0000000001101110101111110011111010000100110000111101)))
(assert (= y (fp #b0 #b00000100001 #b1110000001001101010111111100011000111100100001010110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
