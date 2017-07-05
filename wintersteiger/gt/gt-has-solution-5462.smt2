(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.12119445640750736714608137845061719417572021484375p-658 {+ 545811308716220 -658 (9.37441e-199)}
; Y = -1.7647356515380128172409968101419508457183837890625p-88 {- 3444063195303528 -88 (-5.70217e-027)}
; 1.12119445640750736714608137845061719417572021484375p-658 > -1.7647356515380128172409968101419508457183837890625p-88 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101101101 #b0001111100000110100110011001001010111010000010111100)))
(assert (= y (fp #b1 #b01110100111 #b1100001111000101101101110011010101110000111001101000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
