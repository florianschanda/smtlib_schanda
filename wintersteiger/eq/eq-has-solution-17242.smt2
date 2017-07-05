(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.562107293346060021832499842275865375995635986328125p-754 {- 2531506196855554 -754 (-1.64852e-227)}
; Y = 1.110765040392980740335815426078625023365020751953125p914 {+ 498841394639506 914 (1.53829e+275)}
; -1.562107293346060021832499842275865375995635986328125p-754 = 1.110765040392980740335815426078625023365020751953125p914 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100001101 #b1000111111100110010000110111100111000011101100000010)))
(assert (= y (fp #b0 #b11110010001 #b0001110001011011000110010000001000000111001010010010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
