(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5572439401983053652855915061081759631633758544921875p992 {+ 2509603601431555 992 (6.51797e+298)}
; Y = -1.702574351498554516837202754686586558818817138671875p154 {- 3164113587608958 154 (-3.88799e+046)}
; 1.5572439401983053652855915061081759631633758544921875p992 = -1.702574351498554516837202754686586558818817138671875p154 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111011111 #b1000111010100111100010011111001100001011110000000011)))
(assert (= y (fp #b1 #b10010011001 #b1011001111011011111010011010011010110001110101111110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
