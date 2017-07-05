(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.872767136266193954696746004628948867321014404296875p226 {+ 3930593749669646 226 (2.01959e+068)}
; Y = -1.35940998441833382770482785417698323726654052734375p-97 {- 1618638671899644 -97 (-8.57908e-030)}
; 1.872767136266193954696746004628948867321014404296875p226 % -1.35940998441833382770482785417698323726654052734375p-97 == 1.266951098297244726609278586693108081817626953125p-98
; [HW: 1.266951098297244726609278586693108081817626953125p-98] 

; mpf : + 1202240866817616 -98
; mpfd: + 1202240866817616 -98 (3.99779e-030) class: Pos. norm. non-zero
; hwf : + 1202240866817616 -98 (3.99779e-030) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011100001 #b1101111101101101101010101100001101001001011100001110)))
(assert (= y (fp #b1 #b01110011110 #b0101110000000010010010101111000011101110101111111100)))
(assert (= r (fp #b0 #b01110011101 #x4456e83cd1650)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
