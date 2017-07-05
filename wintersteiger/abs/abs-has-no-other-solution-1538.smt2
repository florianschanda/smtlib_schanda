(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.65329415573449178822329486138187348842620849609375p-176 {- 2942175316329180 -176 (-1.72612e-053)}
; -1.65329415573449178822329486138187348842620849609375p-176 | == 1.65329415573449178822329486138187348842620849609375p-176
; [HW: 1.65329415573449178822329486138187348842620849609375p-176] 

; mpf : + 2942175316329180 -176
; mpfd: + 2942175316329180 -176 (1.72612e-053) class: Pos. norm. non-zero
; hwf : + 2942175316329180 -176 (1.72612e-053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101001111 #b1010011100111110010010010010100110001100001011011100)))
(assert (= r (fp #b0 #b01101001111 #b1010011100111110010010010010100110001100001011011100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
