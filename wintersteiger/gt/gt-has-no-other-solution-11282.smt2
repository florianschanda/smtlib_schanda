(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.23832607183723464316926765604875981807708740234375p-532 {+ 1073325208318844 -532 (8.808e-161)}
; Y = -1.425119749984533168429834404378198087215423583984375p1020 {- 1914569147618182 1020 (-1.6012e+307)}
; 1.23832607183723464316926765604875981807708740234375p-532 > -1.425119749984533168429834404378198087215423583984375p1020 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111101011 #b0011110100000010111011111111110001010011001101111100)))
(assert (= y (fp #b1 #b11111111011 #b0110110011010100101001011101111100010001001110000110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
