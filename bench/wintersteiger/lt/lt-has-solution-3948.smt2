(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.70421225934037323668235330842435359954833984375p794 {+ 3171490068755040 794 (1.77558e+239)}
; Y = -1.97828240555147782941958212177269160747528076171875p-1004 {- 4405792277104748 -1004 (-1.15391e-302)}
; 1.70421225934037323668235330842435359954833984375p794 < -1.97828240555147782941958212177269160747528076171875p-1004 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100011001 #b1011010001000111010000010010111101001111001001100000)))
(assert (= y (fp #b1 #b00000010011 #b1111101001110000101101110011101000011000100001101100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
