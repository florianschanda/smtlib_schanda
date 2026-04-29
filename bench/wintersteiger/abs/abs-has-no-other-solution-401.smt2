(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.04808122160953143264805476064793765544891357421875p926 {- 216538571724204 926 (-5.94526e+278)}
; -1.04808122160953143264805476064793765544891357421875p926 | == 1.04808122160953143264805476064793765544891357421875p926
; [HW: 1.04808122160953143264805476064793765544891357421875p926] 

; mpf : + 216538571724204 926
; mpfd: + 216538571724204 926 (5.94526e+278) class: Pos. norm. non-zero
; hwf : + 216538571724204 926 (5.94526e+278) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110011101 #b0000110001001111000011010000101001011101010110101100)))
(assert (= r (fp #b0 #b11110011101 #b0000110001001111000011010000101001011101010110101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
