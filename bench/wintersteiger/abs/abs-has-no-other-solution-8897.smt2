(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7797166932667998207051596182282082736492156982421875p594 {- 3511531809250915 594 (-1.1539e+179)}
; -1.7797166932667998207051596182282082736492156982421875p594 | == 1.7797166932667998207051596182282082736492156982421875p594
; [HW: 1.7797166932667998207051596182282082736492156982421875p594] 

; mpf : + 3511531809250915 594
; mpfd: + 3511531809250915 594 (1.1539e+179) class: Pos. norm. non-zero
; hwf : + 3511531809250915 594 (1.1539e+179) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001010001 #b1100011110011011100000110110000110111001111001100011)))
(assert (= r (fp #b0 #b11001010001 #b1100011110011011100000110110000110111001111001100011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
