(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.80168028904589316852025149273686110973358154296875p333 {+ 3610447051017356 333 (3.15258e+100)}
; 1.80168028904589316852025149273686110973358154296875p333 S == 1.898251979609605566423624622984789311885833740234375p166
; [HW: 1.898251979609605566423624622984789311885833740234375p166] 

; mpf : + 4045367280654630 166
; mpfd: + 4045367280654630 166 (1.77555e+050) class: Pos. norm. non-zero
; hwf : + 4045367280654630 166 (1.77555e+050) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101001100 #b1100110100111010111010110101111101001100110010001100)))
(assert (= r (fp #b0 #b10010100101 #b1110010111110011110101110111101111111101100100100110)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
