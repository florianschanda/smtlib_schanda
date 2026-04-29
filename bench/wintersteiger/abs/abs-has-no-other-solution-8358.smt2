(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.92174858340877730000784140429459512233734130859375p965 {+ 4151186576769052 965 (5.99297e+290)}
; 1.92174858340877730000784140429459512233734130859375p965 | == 1.92174858340877730000784140429459512233734130859375p965
; [HW: 1.92174858340877730000784140429459512233734130859375p965] 

; mpf : + 4151186576769052 965
; mpfd: + 4151186576769052 965 (5.99297e+290) class: Pos. norm. non-zero
; hwf : + 4151186576769052 965 (5.99297e+290) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111000100 #b1110101111110111101101110001010011100000000000011100)))
(assert (= r (fp #b0 #b11111000100 #b1110101111110111101101110001010011100000000000011100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
