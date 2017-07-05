(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1683285663007632049215089864446781575679779052734375p-770 {- 758084468467927 -770 (-1.88134e-232)}
; Y = 1.2029623686597517018270764310727827250957489013671875p330 {+ 914061247866291 330 (2.63118e+099)}
; -1.1683285663007632049215089864446781575679779052734375p-770 m 1.2029623686597517018270764310727827250957489013671875p330 == -1.1683285663007632049215089864446781575679779052734375p-770
; [HW: -1.1683285663007632049215089864446781575679779052734375p-770] 

; mpf : - 758084468467927 -770
; mpfd: - 758084468467927 -770 (-1.88134e-232) class: Neg. norm. non-zero
; hwf : - 758084468467927 -770 (-1.88134e-232) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011111101 #b0010101100010111100101001011011100111110100011010111)))
(assert (= y (fp #b0 #b10101001001 #b0011001111110101010101110111111110110110010110110011)))
(assert (= r (fp #b1 #b00011111101 #b0010101100010111100101001011011100111110100011010111)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
