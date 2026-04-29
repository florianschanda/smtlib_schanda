(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.68758891201173266694013364030979573726654052734375p-227 {+ 3096625167920124 -227 (7.82452e-069)}
; Y = 1.625777770021981094572538495413027703762054443359375p-702 {+ 2818252531887734 -702 (7.72688e-212)}
; 1.68758891201173266694013364030979573726654052734375p-227 = 1.625777770021981094572538495413027703762054443359375p-702 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100011100 #b1011000000000101110100111011001000101110101111111100)))
(assert (= y (fp #b0 #b00101000001 #b1010000000110010111110001101000011001110111001110110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
