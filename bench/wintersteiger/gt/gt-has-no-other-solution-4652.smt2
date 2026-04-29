(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0630083898582161072710050575551576912403106689453125p-547 {+ 283764561086677 -547 (2.30743e-165)}
; Y = -1.4938197639177299702595291819307021796703338623046875p257 {- 2223966504768075 257 (-3.45945e+077)}
; 1.0630083898582161072710050575551576912403106689453125p-547 > -1.4938197639177299702595291819307021796703338623046875p257 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111011100 #b0001000000100001010100010101110111010000100011010101)))
(assert (= y (fp #b1 #b10100000000 #b0111111001101010111110001101100000100101001001001011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
