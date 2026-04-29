(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.695663567495563572862238288507796823978424072265625p88 {- 3132990183348250 88 (-5.24782e+026)}
; Y = 1.3933747203760538102557120510027743875980377197265625p-339 {+ 1771602244102569 -339 (1.24423e-102)}
; -1.695663567495563572862238288507796823978424072265625p88 > 1.3933747203760538102557120510027743875980377197265625p-339 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001010111 #b1011001000010111000000011110111101101001100000011010)))
(assert (= y (fp #b0 #b01010101100 #b0110010010110100001101001010011100010110100110101001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
