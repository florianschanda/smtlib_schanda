(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.780027940303314348824414992122910916805267333984375p-225 {+ 3512933541288582 -225 (3.30125e-068)}
; Y = -1.4539494050788810408647577787633053958415985107421875p367 {- 2044406371558307 367 (-4.37077e+110)}
; 1.780027940303314348824414992122910916805267333984375p-225 % -1.4539494050788810408647577787633053958415985107421875p367 == 1.780027940303314348824414992122910916805267333984375p-225
; [HW: 1.780027940303314348824414992122910916805267333984375p-225] 

; mpf : + 3512933541288582 -225
; mpfd: + 3512933541288582 -225 (3.30125e-068) class: Pos. norm. non-zero
; hwf : + 3512933541288582 -225 (3.30125e-068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100011110 #b1100011110101111111010010011110110010001101010000110)))
(assert (= y (fp #b1 #b10101101110 #b0111010000110110000001110011100011011010001110100011)))
(assert (= r (fp #b0 #b01100011110 #xc7afe93d91a86)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
