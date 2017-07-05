(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4157124640228604395275624483474530279636383056640625p80 {- 1872202498066625 80 (-1.71149e+024)}
; -1.4157124640228604395275624483474530279636383056640625p80 | == 1.4157124640228604395275624483474530279636383056640625p80
; [HW: 1.4157124640228604395275624483474530279636383056640625p80] 

; mpf : + 1872202498066625 80
; mpfd: + 1872202498066625 80 (1.71149e+024) class: Pos. norm. non-zero
; hwf : + 1872202498066625 80 (1.71149e+024) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001001111 #b0110101001101100001000011100110110000100100011000001)))
(assert (= r (fp #b0 #b10001001111 #b0110101001101100001000011100110110000100100011000001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
