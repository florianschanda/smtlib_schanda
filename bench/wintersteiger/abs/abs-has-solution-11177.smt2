(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.530088114822837130901689306483604013919830322265625p604 {- 2387304636389658 604 (-1.01586e+182)}
; -1.530088114822837130901689306483604013919830322265625p604 | == 1.530088114822837130901689306483604013919830322265625p604
; [HW: 1.530088114822837130901689306483604013919830322265625p604] 

; mpf : + 2387304636389658 604
; mpfd: + 2387304636389658 604 (1.01586e+182) class: Pos. norm. non-zero
; hwf : + 2387304636389658 604 (1.01586e+182) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001011011 #b1000011110110011110110101100110100101001100100011010)))
(assert (= r (fp #b0 #b11001011011 #b1000011110110011110110101100110100101001100100011010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
