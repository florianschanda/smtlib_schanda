(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9508455516049576505821505634230561554431915283203125p-195 {+ 4282227671894981 -195 (3.88485e-059)}
; Y = 1.3554307271838428317067837269860319793224334716796875p-236 {+ 1600717690501179 -236 (1.22743e-071)}
; 1.9508455516049576505821505634230561554431915283203125p-195 = 1.3554307271838428317067837269860319793224334716796875p-236 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100111100 #b1111001101101010100111010011001110110000101111000101)))
(assert (= y (fp #b0 #b01100010011 #b0101101011111101100000100001010100111111100000111011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
