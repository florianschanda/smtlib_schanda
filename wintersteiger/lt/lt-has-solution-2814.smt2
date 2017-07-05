(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4209466851865470982119177278946153819561004638671875p343 {+ 1895775334548979 343 (2.54605e+103)}
; Y = 1.1196073231949748016944568007602356374263763427734375p-900 {+ 538663496171671 -900 (1.32455e-271)}
; 1.4209466851865470982119177278946153819561004638671875p343 < 1.1196073231949748016944568007602356374263763427734375p-900 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101010110 #b0110101111000011001010010111011000111100010111110011)))
(assert (= y (fp #b0 #b00001111011 #b0001111010011110100101011110010101111100000010010111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
