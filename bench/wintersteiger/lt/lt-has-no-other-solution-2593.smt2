(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.631899885780476733287969182129018008708953857421875p124 {+ 2845824090136414 124 (3.47067e+037)}
; Y = 1.7756975009438475954226532849133946001529693603515625p-901 {+ 3493430976202937 -901 (1.05037e-271)}
; 1.631899885780476733287969182129018008708953857421875p124 < 1.7756975009438475954226532849133946001529693603515625p-901 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001111011 #b1010000111000100001100001101111111000101111101011110)))
(assert (= y (fp #b0 #b00001111010 #b1100011010010100000111001000011000100100100010111001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
