(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9805855476458680275442247875616885721683502197265625p-924 {- 4416164706982825 -924 (-1.39662e-278)}
; Y = 1.1625675870759224483919069825788028538227081298828125p-334 {+ 732139324577645 -334 (3.322e-101)}
; -1.9805855476458680275442247875616885721683502197265625p-924 = 1.1625675870759224483919069825788028538227081298828125p-334 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001100011 #b1111101100000111101001111000101000010001101110101001)))
(assert (= y (fp #b0 #b01010110001 #b0010100110011110000001111000010111100001011101101101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
