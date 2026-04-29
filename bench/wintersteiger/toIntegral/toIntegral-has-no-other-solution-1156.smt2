(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.40752651457279132074518201989121735095977783203125 938 {+ 1835336259173620 938 (3.27034e+282)}
; 1.40752651457279132074518201989121735095977783203125 938 I == 1.40752651457279132074518201989121735095977783203125 938
; [HW: 1.40752651457279132074518201989121735095977783203125 938] 

; mpf : + 1835336259173620 938
; mpfd: + 1835336259173620 938 (3.27034e+282) class: Pos. norm. non-zero
; hwf : + 1835336259173620 938 (3.27034e+282) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110101001 #b0110100001010011101010000101110001010111110011110100)))
(assert (= r (fp #b0 #b11110101001 #b0110100001010011101010000101110001010111110011110100)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
