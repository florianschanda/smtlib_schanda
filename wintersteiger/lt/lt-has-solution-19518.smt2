(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.385226892060206438372915727086365222930908203125p470 {- 1734907687535440 470 (-4.22298e+141)}
; Y = 1.21256662545126925323302202741615474224090576171875p529 {+ 957314975173740 529 (2.13095e+159)}
; -1.385226892060206438372915727086365222930908203125p470 < 1.21256662545126925323302202741615474224090576171875p529 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111010101 #b0110001010011110001110101100011011110000001101010000)))
(assert (= y (fp #b0 #b11000010000 #b0011011001101010110001000011000010001000110001101100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
