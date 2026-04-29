(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9279745389347251460776533349417150020599365234375p403 {- 4179225787755736 403 (-3.98281e+121)}
; -1.9279745389347251460776533349417150020599365234375p403 | == 1.9279745389347251460776533349417150020599365234375p403
; [HW: 1.9279745389347251460776533349417150020599365234375p403] 

; mpf : + 4179225787755736 403
; mpfd: + 4179225787755736 403 (3.98281e+121) class: Pos. norm. non-zero
; hwf : + 4179225787755736 403 (3.98281e+121) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110010010 #b1110110110001111101111010100100000111110110011011000)))
(assert (= r (fp #b0 #b10110010010 #b1110110110001111101111010100100000111110110011011000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
