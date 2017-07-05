(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9918827553393068097165041763219051063060760498046875p-138 {- 4467042807341323 -138 (-5.71642e-042)}
; Y = 1.1932594981421491553419400588609278202056884765625p133 {+ 870363403818792 133 (1.29934e+040)}
; Z = 1.106580630492600025860383539111353456974029541015625p674 {+ 479996487771386 674 (8.67362e+202)}
; -1.9918827553393068097165041763219051063060760498046875p-138 x 1.1932594981421491553419400588609278202056884765625p133 1.106580630492600025860383539111353456974029541015625p674 == 1.1065806304925998038157786140800453722476959228515625p674
; [HW: 1.1065806304925998038157786140800453722476959228515625p674] 

; mpf : + 479996487771385 674
; mpfd: + 479996487771385 674 (8.67362e+202) class: Pos. norm. non-zero
; hwf : + 479996487771385 674 (8.67362e+202) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101110101 #b1111110111101100000001110011101110100110000100001011)))
(assert (= y (fp #b0 #b10010000100 #b0011000101111001011101000101100000101001011100101000)))
(assert (= z (fp #b0 #b11010100001 #b0001101101001000110111100100001001011010010011111010)))
(assert (= r (fp #b0 #b11010100001 #b0001101101001000110111100100001001011010010011111001)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)
