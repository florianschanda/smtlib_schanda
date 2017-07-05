(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4605304598535606697140565302106551826000213623046875p124 {- 2074044807389259 124 (-3.1062e+037)}
; -1.4605304598535606697140565302106551826000213623046875p124 | == 1.4605304598535606697140565302106551826000213623046875p124
; [HW: 1.4605304598535606697140565302106551826000213623046875p124] 

; mpf : + 2074044807389259 124
; mpfd: + 2074044807389259 124 (3.1062e+037) class: Pos. norm. non-zero
; hwf : + 2074044807389259 124 (3.1062e+037) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001111011 #b0111010111100101010100101111111111100010000001001011)))
(assert (= r (fp #b0 #b10001111011 #b0111010111100101010100101111111111100010000001001011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
