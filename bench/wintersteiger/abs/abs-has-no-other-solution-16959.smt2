(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6279846294295949871155926302890293300151824951171875p930 {- 2828191343093523 930 (-1.47756e+280)}
; -1.6279846294295949871155926302890293300151824951171875p930 | == 1.6279846294295949871155926302890293300151824951171875p930
; [HW: 1.6279846294295949871155926302890293300151824951171875p930] 

; mpf : + 2828191343093523 930
; mpfd: + 2828191343093523 930 (1.47756e+280) class: Pos. norm. non-zero
; hwf : + 2828191343093523 930 (1.47756e+280) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110100001 #b1010000011000011100110011100010111001010011100010011)))
(assert (= r (fp #b0 #b11110100001 #b1010000011000011100110011100010111001010011100010011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
