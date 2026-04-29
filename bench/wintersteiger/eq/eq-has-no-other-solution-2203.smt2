(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.868106833161710778057340576197020709514617919921875p-728 {+ 3909605610344862 -728 (1.32302e-219)}
; Y = 1.0491549020408659220748859297600574791431427001953125p146 {+ 221373998514677 146 (9.35877e+043)}
; 1.868106833161710778057340576197020709514617919921875p-728 = 1.0491549020408659220748859297600574791431427001953125p146 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100100111 #b1101111000111100001111111101100111011101000110011110)))
(assert (= y (fp #b0 #b10010010001 #b0000110010010101011010100110100010110100000111110101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
