(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.27804852983706407343333921744488179683685302734375p-936 {+ 1252219255365116 -936 (2.20025e-282)}
; Y = -1.7655410454658519991966159068397246301174163818359375p92 {- 3447690367096831 92 (-8.74254e+027)}
; Z = 1.734106627968507563508637758786790072917938232421875p233 {+ 3306122336169182 233 (2.39367e+070)}
; 1.27804852983706407343333921744488179683685302734375p-936 x -1.7655410454658519991966159068397246301174163818359375p92 1.734106627968507563508637758786790072917938232421875p233 == 1.734106627968507563508637758786790072917938232421875p233
; [HW: 1.734106627968507563508637758786790072917938232421875p233] 

; mpf : + 3306122336169182 233
; mpfd: + 3306122336169182 233 (2.39367e+070) class: Pos. norm. non-zero
; hwf : + 3306122336169182 233 (2.39367e+070) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001010111 #b0100011100101110001100000011111001011001110111111100)))
(assert (= y (fp #b1 #b10001011011 #b1100001111111010011111110111101000000101011111111111)))
(assert (= z (fp #b0 #b10011101000 #b1011101111101110011010010111011011100110110011011110)))
(assert (= r (fp #b0 #b10011101000 #b1011101111101110011010010111011011100110110011011110)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
