(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8617972846863268809869396136491559445858001708984375p-763 {- 3881189930182247 -763 (-3.83748e-230)}
; -1.8617972846863268809869396136491559445858001708984375p-763 | == 1.8617972846863268809869396136491559445858001708984375p-763
; [HW: 1.8617972846863268809869396136491559445858001708984375p-763] 

; mpf : + 3881189930182247 -763
; mpfd: + 3881189930182247 -763 (3.83748e-230) class: Pos. norm. non-zero
; hwf : + 3881189930182247 -763 (3.83748e-230) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100000100 #b1101110010011110101111110011000110000010011001100111)))
(assert (= r (fp #b0 #b00100000100 #b1101110010011110101111110011000110000010011001100111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
