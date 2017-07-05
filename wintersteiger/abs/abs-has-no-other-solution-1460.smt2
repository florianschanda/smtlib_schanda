(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.650902208411271221422111921128816902637481689453125p628 {+ 2931402943255634 628 (1.8389e+189)}
; 1.650902208411271221422111921128816902637481689453125p628 | == 1.650902208411271221422111921128816902637481689453125p628
; [HW: 1.650902208411271221422111921128816902637481689453125p628] 

; mpf : + 2931402943255634 628
; mpfd: + 2931402943255634 628 (1.8389e+189) class: Pos. norm. non-zero
; hwf : + 2931402943255634 628 (1.8389e+189) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001110011 #b1010011010100001100001101111001000000101010001010010)))
(assert (= r (fp #b0 #b11001110011 #b1010011010100001100001101111001000000101010001010010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
