(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.743736422467110802614342901506461203098297119140625p917 {+ 3349491075084746 917 (1.93191e+276)}
; Y = 1.8074025077556392648858718530391342937946319580078125p-704 {+ 3636217633066301 -704 (2.14752e-212)}
; 1.743736422467110802614342901506461203098297119140625p917 > 1.8074025077556392648858718530391342937946319580078125p-704 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110010100 #b1011111001100101100000101001101101010111000111001010)))
(assert (= y (fp #b0 #b00100111111 #b1100111010110001111011100100010110000100110100111101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
