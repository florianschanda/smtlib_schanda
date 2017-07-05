(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8575722547844224497026743847527541220188140869140625p-748 {+ 3862162087090401 -748 (1.25461e-225)}
; Y = -1.450496118996685623869780101813375949859619140625p-92 {- 2028854153645328 -92 (-2.92925e-028)}
; 1.8575722547844224497026743847527541220188140869140625p-748 / -1.450496118996685623869780101813375949859619140625p-92 == -1.2806461392460073422938648946001194417476654052734375p-656
; [HW: -1.2806461392460073422938648946001194417476654052734375p-656] 

; mpf : - 1263917848131287 -656
; mpfd: - 1263917848131287 -656 (-4.28304e-198) class: Neg. norm. non-zero
; hwf : - 1263917848131287 -656 (-4.28304e-198) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100010011 #b1101101110001001110110101111010001000001100011100001)))
(assert (= y (fp #b1 #b01110100011 #b0111001101010011101101101011001000010000110100010000)))
(assert (= r (fp #b1 #b00101101111 #b0100011111011000011011001110010111001111011011010111)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
