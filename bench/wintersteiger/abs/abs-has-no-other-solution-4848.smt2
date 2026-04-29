(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5615739880625081337228721167775802314281463623046875p272 {- 2529104403379275 272 (-1.18501e+082)}
; -1.5615739880625081337228721167775802314281463623046875p272 | == 1.5615739880625081337228721167775802314281463623046875p272
; [HW: 1.5615739880625081337228721167775802314281463623046875p272] 

; mpf : + 2529104403379275 272
; mpfd: + 2529104403379275 272 (1.18501e+082) class: Pos. norm. non-zero
; hwf : + 2529104403379275 272 (1.18501e+082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100001111 #b1000111111000011010100000001100100000011010001001011)))
(assert (= r (fp #b0 #b10100001111 #b1000111111000011010100000001100100000011010001001011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
