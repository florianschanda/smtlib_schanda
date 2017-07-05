(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3158980178501398228263497003354132175445556640625p827 {- 1422678195476968 827 (-1.17768e+249)}
; -1.3158980178501398228263497003354132175445556640625p827 | == 1.3158980178501398228263497003354132175445556640625p827
; [HW: 1.3158980178501398228263497003354132175445556640625p827] 

; mpf : + 1422678195476968 827
; mpfd: + 1422678195476968 827 (1.17768e+249) class: Pos. norm. non-zero
; hwf : + 1422678195476968 827 (1.17768e+249) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100111010 #b0101000011011110101100010100011110001001100111101000)))
(assert (= r (fp #b0 #b11100111010 #b0101000011011110101100010100011110001001100111101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
