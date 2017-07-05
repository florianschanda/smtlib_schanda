(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.23835680211805243544631593977101147174835205078125p-886 {+ 1073463605200084 -886 (2.40032e-267)}
; 1.23835680211805243544631593977101147174835205078125p-886 | == 1.23835680211805243544631593977101147174835205078125p-886
; [HW: 1.23835680211805243544631593977101147174835205078125p-886] 

; mpf : + 1073463605200084 -886
; mpfd: + 1073463605200084 -886 (2.40032e-267) class: Pos. norm. non-zero
; hwf : + 1073463605200084 -886 (2.40032e-267) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010001001 #b0011110100000100111100111000110111100000010011010100)))
(assert (= r (fp #b0 #b00010001001 #b0011110100000100111100111000110111100000010011010100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
