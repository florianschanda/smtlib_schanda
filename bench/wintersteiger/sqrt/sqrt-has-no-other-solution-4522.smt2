(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5123558079432040113232460498693399131298065185546875p-919 {+ 2307445425734123 -919 (3.41262e-277)}
; 1.5123558079432040113232460498693399131298065185546875p-919 S == 1.7391698065129832517783370349206961691379547119140625p-460
; [HW: 1.7391698065129832517783370349206961691379547119140625p-460] 

; mpf : + 3328924865175393 -460
; mpfd: + 3328924865175393 -460 (5.84176e-139) class: Pos. norm. non-zero
; hwf : + 3328924865175393 -460 (5.84176e-139) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001101000 #b1000001100101001110000000000111100001000000111101011)))
(assert (= r (fp #b0 #b01000110011 #b1011110100111010001110111000000100101001111101100001)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
