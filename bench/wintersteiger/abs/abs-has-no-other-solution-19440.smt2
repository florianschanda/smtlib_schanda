(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1424174890496854306576324233901686966419219970703125p-238 {- 641391350615205 -238 (-2.58634e-072)}
; -1.1424174890496854306576324233901686966419219970703125p-238 | == 1.1424174890496854306576324233901686966419219970703125p-238
; [HW: 1.1424174890496854306576324233901686966419219970703125p-238] 

; mpf : + 641391350615205 -238
; mpfd: + 641391350615205 -238 (2.58634e-072) class: Pos. norm. non-zero
; hwf : + 641391350615205 -238 (2.58634e-072) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100010001 #b0010010001110101011110001111100111011000110010100101)))
(assert (= r (fp #b0 #b01100010001 #b0010010001110101011110001111100111011000110010100101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
