(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.89984497054787038194945125724188983440399169921875p777 {+ 4052541474050604 777 (1.51017e+234)}
; Y = 1.7015441288009480746978852039319463074207305908203125p-423 {+ 3159473877051909 -423 (7.85516e-128)}
; 1.89984497054787038194945125724188983440399169921875p777 < 1.7015441288009480746978852039319463074207305908203125p-423 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100001000 #b1110011001011100001111010110111111111001001000101100)))
(assert (= y (fp #b0 #b01001011000 #b1011001110011000011001010110000111100110101000000101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
