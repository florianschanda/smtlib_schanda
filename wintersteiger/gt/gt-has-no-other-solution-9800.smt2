(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.626477676595193155861807099427096545696258544921875p647 {+ 2821404630870046 647 (9.49851e+194)}
; Y = 1.5332397429810062927657554610050283372402191162109375p-793 {+ 2401498307788399 -793 (2.94323e-239)}
; 1.626477676595193155861807099427096545696258544921875p647 > 1.5332397429810062927657554610050283372402191162109375p-793 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010000110 #b1010000001100000110101110100110010100110100000011110)))
(assert (= y (fp #b0 #b00011100110 #b1000100010000010011001100101100100000111111001101111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
