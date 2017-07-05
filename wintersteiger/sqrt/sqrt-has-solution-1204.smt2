(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7849636285293082327285674182348884642124176025390625p-858 {+ 3535161904943985 -858 (9.28738e-259)}
; 1.7849636285293082327285674182348884642124176025390625p-858 S == 1.336025309838592800559808893012814223766326904296875p-429
; [HW: 1.336025309838592800559808893012814223766326904296875p-429] 

; mpf : + 1513323460176142 -429
; mpfd: + 1513323460176142 -429 (9.6371e-130) class: Pos. norm. non-zero
; hwf : + 1513323460176142 -429 (9.6371e-130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010100101 #b1100100011110011011000000101100100010101001101110001)))
(assert (= r (fp #b0 #b01001010010 #b0101011000000101110000010011010001100010100100001110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
