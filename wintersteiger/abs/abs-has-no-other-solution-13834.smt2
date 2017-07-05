(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7274342371088644565446656997664831578731536865234375p602 {- 3276072559180023 602 (-2.86721e+181)}
; -1.7274342371088644565446656997664831578731536865234375p602 | == 1.7274342371088644565446656997664831578731536865234375p602
; [HW: 1.7274342371088644565446656997664831578731536865234375p602] 

; mpf : + 3276072559180023 602
; mpfd: + 3276072559180023 602 (2.86721e+181) class: Pos. norm. non-zero
; hwf : + 3276072559180023 602 (2.86721e+181) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001011001 #b1011101000111001001000010101001001011111100011110111)))
(assert (= r (fp #b0 #b11001011001 #b1011101000111001001000010101001001011111100011110111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
