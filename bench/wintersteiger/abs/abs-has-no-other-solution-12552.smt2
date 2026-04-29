(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.484991713920225553380305427708663046360015869140625p-807 {- 2184208502088906 -807 (-1.73987e-243)}
; -1.484991713920225553380305427708663046360015869140625p-807 | == 1.484991713920225553380305427708663046360015869140625p-807
; [HW: 1.484991713920225553380305427708663046360015869140625p-807] 

; mpf : + 2184208502088906 -807
; mpfd: + 2184208502088906 -807 (1.73987e-243) class: Pos. norm. non-zero
; hwf : + 2184208502088906 -807 (1.73987e-243) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011011000 #b0111110000101000011010101011111000011110010011001010)))
(assert (= r (fp #b0 #b00011011000 #b0111110000101000011010101011111000011110010011001010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
