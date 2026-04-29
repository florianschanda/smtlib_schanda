(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1052204286558289236808150235447101294994354248046875p151 {- 473870683286155 151 (-3.15485e+045)}
; -1.1052204286558289236808150235447101294994354248046875p151 | == 1.1052204286558289236808150235447101294994354248046875p151
; [HW: 1.1052204286558289236808150235447101294994354248046875p151] 

; mpf : + 473870683286155 151
; mpfd: + 473870683286155 151 (3.15485e+045) class: Pos. norm. non-zero
; hwf : + 473870683286155 151 (3.15485e+045) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010010110 #b0001101011101111101110011101101111110010101010001011)))
(assert (= r (fp #b0 #b10010010110 #b0001101011101111101110011101101111110010101010001011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
