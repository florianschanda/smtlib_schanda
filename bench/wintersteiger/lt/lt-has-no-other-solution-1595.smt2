(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.08770282758709502246574629680253565311431884765625p977 {+ 394978421640580 977 (1.38936e+294)}
; Y = -1.2671978859179626741848778692656196653842926025390625p-97 {- 1203352299454321 -97 (-7.99714e-030)}
; 1.08770282758709502246574629680253565311431884765625p977 < -1.2671978859179626741848778692656196653842926025390625p-97 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111010000 #b0001011001110011101100010100100001000000110110000100)))
(assert (= y (fp #b1 #b01110011110 #b0100010001100111000101001010010110010011111101110001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
