(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.486177100179654875233836719417013227939605712890625p-241 {+ 2189547007205162 -241 (4.20573e-073)}
; Y = 1.1732916648828866090781275488552637398242950439453125p426 {+ 780436277392981 426 (2.03322e+128)}
; Z = -1.311740969887410290795060063828714191913604736328125p711 {- 1403956515821058 711 (-1.41311e+214)}
; 1.486177100179654875233836719417013227939605712890625p-241 x 1.1732916648828866090781275488552637398242950439453125p426 -1.311740969887410290795060063828714191913604736328125p711 == -1.3117409698874100687504551387974061071872711181640625p711
; [HW: -1.3117409698874100687504551387974061071872711181640625p711] 

; mpf : - 1403956515821057 711
; mpfd: - 1403956515821057 711 (-1.41311e+214) class: Neg. norm. non-zero
; hwf : - 1403956515821057 711 (-1.41311e+214) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100001110 #b0111110001110110000110100011100101010101111100101010)))
(assert (= y (fp #b0 #b10110101001 #b0010110001011100110101111011000101010111011001010101)))
(assert (= z (fp #b1 #b11011000110 #b0100111111001110010000011001011001111101011000000010)))
(assert (= r (fp #b1 #b11011000110 #b0100111111001110010000011001011001111101011000000001)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)
