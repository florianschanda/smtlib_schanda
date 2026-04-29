(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.63728968188329471189490504912100732326507568359375p180 {- 2870097573856668 180 (-2.50914e+054)}
; Y = +zero {+ 0 -1023 (0)}
; -1.63728968188329471189490504912100732326507568359375p180 > +zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010110011 #b1010001100100101011010101010010111000100010110011100)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
