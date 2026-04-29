(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.831967893530682456315616946085356175899505615234375p293 {+ 3746850295288998 293 (2.91546e+088)}
; Y = 1.17224177536341134242547923349775373935699462890625p778 {+ 775707995344292 778 (1.8636e+234)}
; 1.831967893530682456315616946085356175899505615234375p293 = 1.17224177536341134242547923349775373935699462890625p778 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100100100 #b1101010011111011110110010000111000001001010010100110)))
(assert (= y (fp #b0 #b11100001001 #b0010110000011000000010010111100000110000110110100100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
