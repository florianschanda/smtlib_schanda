(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.878960228186321135268599391565658152103424072265625p-754 {+ 3958484956133402 -754 (1.9829e-227)}
; Y = 1.244480286376478783694210505927912890911102294921875p270 {+ 1101041326624542 270 (2.36095e+081)}
; 1.878960228186321135268599391565658152103424072265625p-754 % 1.244480286376478783694210505927912890911102294921875p270 == 1.878960228186321135268599391565658152103424072265625p-754
; [HW: 1.878960228186321135268599391565658152103424072265625p-754] 

; mpf : + 3958484956133402 -754
; mpfd: + 3958484956133402 -754 (1.9829e-227) class: Pos. norm. non-zero
; hwf : + 3958484956133402 -754 (1.9829e-227) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100001101 #b1110000100000011100010011001101010001011100000011010)))
(assert (= y (fp #b0 #b10100001101 #b0011111010010110010000101001001010000000111100011110)))
(assert (= r (fp #b0 #b00100001101 #xe103899a8b81a)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
