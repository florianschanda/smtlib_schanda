(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.80801330004328075773400996695272624492645263671875p-370 {- 3638968396985324 -370 (-7.51802e-112)}
; Y = -1.162146765238559087407566039473749697208404541015625p-187 {- 730244111507706 -187 (-5.9245e-057)}
; -1.80801330004328075773400996695272624492645263671875p-370 > -1.162146765238559087407566039473749697208404541015625p-187 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010001101 #b1100111011011001111101011010101001101011001111101100)))
(assert (= y (fp #b1 #b01101000100 #b0010100110000010011100110100110111011010000011111010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
