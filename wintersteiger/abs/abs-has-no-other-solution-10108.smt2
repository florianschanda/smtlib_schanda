(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2932194192805572807714042937732301652431488037109375p-795 {- 1320542867409711 -795 (-6.2062e-240)}
; -1.2932194192805572807714042937732301652431488037109375p-795 | == 1.2932194192805572807714042937732301652431488037109375p-795
; [HW: 1.2932194192805572807714042937732301652431488037109375p-795] 

; mpf : + 1320542867409711 -795
; mpfd: + 1320542867409711 -795 (6.2062e-240) class: Pos. norm. non-zero
; hwf : + 1320542867409711 -795 (6.2062e-240) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011100100 #b0100101100010000011011011000100001011100101100101111)))
(assert (= r (fp #b0 #b00011100100 #b0100101100010000011011011000100001011100101100101111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
