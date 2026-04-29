(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1486692352358378599319621571339666843414306640625p-424 {+ 669546712409576 -424 (2.65141e-128)}
; Y = -1.0145605496817886592708646276150830090045928955078125p-434 {- 65574886121213 -434 (-2.28697e-131)}
; 1.1486692352358378599319621571339666843414306640625p-424 > -1.0145605496817886592708646276150830090045928955078125p-434 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001010111 #b0010011000001111001011111101111101000010010111101000)))
(assert (= y (fp #b1 #b01001001101 #b0000001110111010001111010111110010110001111011111101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
