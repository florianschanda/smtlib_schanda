(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2736436510991728798813937828526832163333892822265625p-869 {+ 1232381445122537 -869 (3.2358e-262)}
; Y = -1.39394953974843804900274335523135960102081298828125p533 {- 1774191000413844 533 (-3.91954e+160)}
; 1.2736436510991728798813937828526832163333892822265625p-869 = -1.39394953974843804900274335523135960102081298828125p533 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010011010 #b0100011000001101100000101010010000111010100111101001)))
(assert (= y (fp #b1 #b11000010100 #b0110010011011001111000001000010101111110011010010100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
