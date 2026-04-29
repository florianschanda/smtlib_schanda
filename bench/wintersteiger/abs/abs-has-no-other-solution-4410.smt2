(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.273746407656211498959919481421820819377899169921875p-961 {- 1232844219514526 -961 (-6.53517e-290)}
; -1.273746407656211498959919481421820819377899169921875p-961 | == 1.273746407656211498959919481421820819377899169921875p-961
; [HW: 1.273746407656211498959919481421820819377899169921875p-961] 

; mpf : + 1232844219514526 -961
; mpfd: + 1232844219514526 -961 (6.53517e-290) class: Pos. norm. non-zero
; hwf : + 1232844219514526 -961 (6.53517e-290) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000111110 #b0100011000010100001111101001110001000111111010011110)))
(assert (= r (fp #b0 #b00000111110 #b0100011000010100001111101001110001000111111010011110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
