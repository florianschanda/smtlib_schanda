(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5436101660569623295060637246933765709400177001953125p167 {- 2448202541288949 167 (-2.88767e+050)}
; Y = 1.69682114663835914569745000335387885570526123046875p-830 {+ 3138203456344396 -830 (2.36995e-250)}
; -1.5436101660569623295060637246933765709400177001953125p167 > 1.69682114663835914569745000335387885570526123046875p-830 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010100110 #b1000101100101010000010010010110011111100110111110101)))
(assert (= y (fp #b0 #b00011000001 #b1011001001100010110111101110001111111001000101001100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
