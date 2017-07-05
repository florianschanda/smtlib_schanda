(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.008863294245438968488315367721952497959136962890625p781 {- 39916728661034 781 (-1.2831e+235)}
; -1.008863294245438968488315367721952497959136962890625p781 | == 1.008863294245438968488315367721952497959136962890625p781
; [HW: 1.008863294245438968488315367721952497959136962890625p781] 

; mpf : + 39916728661034 781
; mpfd: + 39916728661034 781 (1.2831e+235) class: Pos. norm. non-zero
; hwf : + 39916728661034 781 (1.2831e+235) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100001100 #b0000001001000100110111010110011011101011010000101010)))
(assert (= r (fp #b0 #b11100001100 #b0000001001000100110111010110011011101011010000101010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
