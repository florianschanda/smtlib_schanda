(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.434435197541483741900947279646061360836029052734375 329 {- 1956522193764454 329 (-1.56873e+099)}
; -1.434435197541483741900947279646061360836029052734375 329 I == -1.434435197541483741900947279646061360836029052734375 329
; [HW: -1.434435197541483741900947279646061360836029052734375 329] 

; mpf : - 1956522193764454 329
; mpfd: - 1956522193764454 329 (-1.56873e+099) class: Neg. norm. non-zero
; hwf : - 1956522193764454 329 (-1.56873e+099) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101001000 #b0110111100110111001001010010010110101100000001100110)))
(assert (= r (fp #b1 #b10101001000 #b0110111100110111001001010010010110101100000001100110)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
