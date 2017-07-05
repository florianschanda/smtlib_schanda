(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.616804621459152269125070233712904155254364013671875p-1003 {+ 2777841063363838 -1003 (1.88613e-302)}
; Y = 1.760252071985706212586819674470461905002593994140625p-1004 {+ 3423870948102474 -1004 (1.02674e-302)}
; 1.616804621459152269125070233712904155254364013671875p-1003 M 1.760252071985706212586819674470461905002593994140625p-1004 == 1.616804621459152269125070233712904155254364013671875p-1003
; [HW: 1.616804621459152269125070233712904155254364013671875p-1003] 

; mpf : + 2777841063363838 -1003
; mpfd: + 2777841063363838 -1003 (1.88613e-302) class: Pos. norm. non-zero
; hwf : + 2777841063363838 -1003 (1.88613e-302) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000010100 #b1001110111100110111010000101110100110000010011111110)))
(assert (= y (fp #b0 #b00000010011 #b1100001010011111111000010011100111100101000101001010)))
(assert (= r (fp #b0 #b00000010100 #b1001110111100110111010000101110100110000010011111110)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
