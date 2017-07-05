(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5291545930196381863908072773483581840991973876953125p355 {- 2383100427944629 355 (-1.12228e+107)}
; -1.5291545930196381863908072773483581840991973876953125p355 | == 1.5291545930196381863908072773483581840991973876953125p355
; [HW: 1.5291545930196381863908072773483581840991973876953125p355] 

; mpf : + 2383100427944629 355
; mpfd: + 2383100427944629 355 (1.12228e+107) class: Pos. norm. non-zero
; hwf : + 2383100427944629 355 (1.12228e+107) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101100010 #b1000011101110110101011001110011110001100001010110101)))
(assert (= r (fp #b0 #b10101100010 #b1000011101110110101011001110011110001100001010110101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
