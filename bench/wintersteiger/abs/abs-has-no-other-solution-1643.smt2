(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.370585915824888534331194023252464830875396728515625p939 {- 1668970592417722 939 (-6.36901e+282)}
; -1.370585915824888534331194023252464830875396728515625p939 | == 1.370585915824888534331194023252464830875396728515625p939
; [HW: 1.370585915824888534331194023252464830875396728515625p939] 

; mpf : + 1668970592417722 939
; mpfd: + 1668970592417722 939 (6.36901e+282) class: Pos. norm. non-zero
; hwf : + 1668970592417722 939 (6.36901e+282) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110101010 #b0101111011011110101101111111010011010011011110111010)))
(assert (= r (fp #b0 #b11110101010 #b0101111011011110101101111111010011010011011110111010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
