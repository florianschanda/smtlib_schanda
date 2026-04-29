(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9322458900747940813147351946099661290645599365234375p-79 {+ 4198462243158519 -79 (3.19663e-024)}
; 1.9322458900747940813147351946099661290645599365234375p-79 S == 1.965831066025152562559696889366023242473602294921875p-40
; [HW: 1.965831066025152562559696889366023242473602294921875p-40] 

; mpf : + 4349716429053726 -40
; mpfd: + 4349716429053726 -40 (1.78791e-012) class: Pos. norm. non-zero
; hwf : + 4349716429053726 -40 (1.78791e-012) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110110000 #b1110111010100111101010101010100110110011100111110111)))
(assert (= r (fp #b0 #b01111010111 #b1111011101000000101101000110101000001001111100011110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
