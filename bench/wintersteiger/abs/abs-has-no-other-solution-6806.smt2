(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7394931149637642420202610082924365997314453125p702 {- 3330380916993856 702 (-3.65999e+211)}
; -1.7394931149637642420202610082924365997314453125p702 | == 1.7394931149637642420202610082924365997314453125p702
; [HW: 1.7394931149637642420202610082924365997314453125p702] 

; mpf : + 3330380916993856 702
; mpfd: + 3330380916993856 702 (3.65999e+211) class: Pos. norm. non-zero
; hwf : + 3330380916993856 702 (3.65999e+211) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010111101 #b1011110101001111011010111011100001100010111101000000)))
(assert (= r (fp #b0 #b11010111101 #b1011110101001111011010111011100001100010111101000000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
