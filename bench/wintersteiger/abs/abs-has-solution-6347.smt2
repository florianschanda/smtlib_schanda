(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6854225604341246391726372166885994374752044677734375p189 {- 3086868787762455 189 (-1.32245e+057)}
; -1.6854225604341246391726372166885994374752044677734375p189 | == 1.6854225604341246391726372166885994374752044677734375p189
; [HW: 1.6854225604341246391726372166885994374752044677734375p189] 

; mpf : + 3086868787762455 189
; mpfd: + 3086868787762455 189 (1.32245e+057) class: Pos. norm. non-zero
; hwf : + 3086868787762455 189 (1.32245e+057) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010111100 #b1010111101110111110110100101100100000001010100010111)))
(assert (= r (fp #b0 #b10010111100 #b1010111101110111110110100101100100000001010100010111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
