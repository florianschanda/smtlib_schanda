(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.072784978410981526764089721837081015110015869140625p681 {- 327794401649866 681 (-1.07632e+205)}
; Y = 1.9587582372928065144179754497599788010120391845703125p694 {+ 4317863240210277 694 (1.6099e+209)}
; -1.072784978410981526764089721837081015110015869140625p681 > 1.9587582372928065144179754497599788010120391845703125p694 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010101000 #b0001001010100010000010010100110111101010010011001010)))
(assert (= y (fp #b0 #b11010110101 #b1111010101110001001011100000100111110001011101100101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
