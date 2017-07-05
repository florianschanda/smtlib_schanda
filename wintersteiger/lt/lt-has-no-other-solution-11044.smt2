(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.954090875632188417654333534301258623600006103515625p844 {+ 4296843311974714 844 (2.29225e+254)}
; Y = 1.7742256853333431276809051269083283841609954833984375p281 {+ 3486802507967911 281 (6.89347e+084)}
; 1.954090875632188417654333534301258623600006103515625p844 < 1.7742256853333431276809051269083283841609954833984375p281 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101001011 #b1111010000111111010011001011010001000000100100111010)))
(assert (= y (fp #b0 #b10100011000 #b1100011000110011101001111000111000111010110110100111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
