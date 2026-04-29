(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8724411933933307050637040447327308356761932373046875p984 {- 3929125833468875 984 (-3.06143e+296)}
; Y = 1.7826433353785449131834184299805201590061187744140625p-64 {+ 3524712233574817 -64 (9.66373e-020)}
; -1.8724411933933307050637040447327308356761932373046875p984 > 1.7826433353785449131834184299805201590061187744140625p-64 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111010111 #b1101111101011000010011100101100101001110101111001011)))
(assert (= y (fp #b0 #b01110111111 #b1100100001011011010100000100100111100010000110100001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
