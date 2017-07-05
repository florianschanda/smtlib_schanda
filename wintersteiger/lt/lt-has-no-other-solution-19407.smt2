(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7101606573043997006067229449399746954441070556640625p-149 {+ 3198279271609281 -149 (2.39645e-045)}
; Y = -1.878538374092647789126431234763003885746002197265625p777 {- 3956585094194330 777 (-1.49323e+234)}
; 1.7101606573043997006067229449399746954441070556640625p-149 < -1.878538374092647789126431234763003885746002197265625p777 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101101010 #b1011010111001101000101101011111000000111001111000001)))
(assert (= y (fp #b1 #b11100001000 #b1110000011100111111001000001000100000010010010011010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
