(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7667012940028625767041603467077948153018951416015625p-71 {- 3452915661975769 -71 (-7.48227e-022)}
; -1.7667012940028625767041603467077948153018951416015625p-71 | == 1.7667012940028625767041603467077948153018951416015625p-71
; [HW: 1.7667012940028625767041603467077948153018951416015625p-71] 

; mpf : + 3452915661975769 -71
; mpfd: + 3452915661975769 -71 (7.48227e-022) class: Pos. norm. non-zero
; hwf : + 3452915661975769 -71 (7.48227e-022) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110111000 #b1100010001000110100010010011011110001011000011011001)))
(assert (= r (fp #b0 #b01110111000 #b1100010001000110100010010011011110001011000011011001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
