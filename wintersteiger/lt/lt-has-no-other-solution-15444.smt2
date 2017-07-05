(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.105490492354796128182670145179145038127899169921875p-159 {+ 475086942060190 -159 (1.51281e-048)}
; Y = 1.529845530317460511326999039738439023494720458984375p-627 {+ 2386212132901638 -627 (2.74688e-189)}
; 1.105490492354796128182670145179145038127899169921875p-159 < 1.529845530317460511326999039738439023494720458984375p-627 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101100000 #b0001101100000001011011001100011010110011111010011110)))
(assert (= y (fp #b0 #b00110001100 #b1000011110100011111101001110100010100101001100000110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
