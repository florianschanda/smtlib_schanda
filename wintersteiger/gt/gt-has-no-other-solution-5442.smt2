(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.778000045366986636707906654919497668743133544921875p-71 {+ 3503800714408990 -71 (7.53012e-022)}
; Y = 1.0860196202508209939452399339643307030200958251953125p-577 {+ 387397929708149 -577 (2.19548e-174)}
; 1.778000045366986636707906654919497668743133544921875p-71 > 1.0860196202508209939452399339643307030200958251953125p-577 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110111000 #b1100011100101011000000101100111100100011010000011110)))
(assert (= y (fp #b0 #b00110111110 #b0001011000000101011000011011111111001010101001110101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
