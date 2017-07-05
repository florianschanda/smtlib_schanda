(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2881704113222613994338416887330822646617889404296875p724 {- 1297804157050139 724 (-1.13682e+218)}
; Y = -1.5799032793790417361634581538964994251728057861328125p-1002 {- 2611652192922381 -1002 (-3.68617e-302)}
; -1.2881704113222613994338416887330822646617889404296875p724 = -1.5799032793790417361634581538964994251728057861328125p-1002 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011010011 #b0100100111000101100010010011110001001101110100011011)))
(assert (= y (fp #b1 #b00000010101 #b1001010001110100100010101001001111000110101100001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
