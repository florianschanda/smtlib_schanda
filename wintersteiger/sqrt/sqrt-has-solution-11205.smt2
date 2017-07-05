(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2163123069269605736053563305176794528961181640625p-905 {+ 974184024871912 -905 (4.49675e-273)}
; 1.2163123069269605736053563305176794528961181640625p-905 S == 1.55968734490407445747450765338726341724395751953125p-453
; [HW: 1.55968734490407445747450765338726341724395751953125p-453] 

; mpf : + 2520607717953972 -453
; mpfd: + 2520607717953972 -453 (6.70578e-137) class: Pos. norm. non-zero
; hwf : + 2520607717953972 -453 (6.70578e-137) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001110110 #b0011011101100000001111100100101111111001001111101000)))
(assert (= r (fp #b0 #b01000111010 #b1000111101000111101010110111101001011001000110110100)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
