(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8605443997505302089479073401889763772487640380859375p205 {+ 3875547438052255 205 (9.56729e+061)}
; Y = -1.1988876836348882903848789283074438571929931640625p704 {- 895710497906664 704 (-1.00901e+212)}
; 1.8605443997505302089479073401889763772487640380859375p205 < -1.1988876836348882903848789283074438571929931640625p704 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011001100 #b1101110001001100101000110100010110101111001110011111)))
(assert (= y (fp #b1 #b11010111111 #b0011001011101010010011011010000011001001111111101000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
