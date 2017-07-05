(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.927559059806024155392378816031850874423980712890625p-936 {+ 4177354636106538 -936 (3.31842e-282)}
; Y = -1.4007073925235429268099096589139662683010101318359375p800 {- 1804625663653631 800 (-9.33994e+240)}
; 1.927559059806024155392378816031850874423980712890625p-936 + -1.4007073925235429268099096589139662683010101318359375p800 == -1.4007073925235429268099096589139662683010101318359375p800
; [HW: -1.4007073925235429268099096589139662683010101318359375p800] 

; mpf : - 1804625663653631 800
; mpfd: - 1804625663653631 800 (-9.33994e+240) class: Neg. norm. non-zero
; hwf : - 1804625663653631 800 (-9.33994e+240) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001010111 #b1110110101110100100000101011001011111001101100101010)))
(assert (= y (fp #b1 #b11100011111 #b0110011010010100110000100111101000100111011011111111)))
(assert (= r (fp #b1 #b11100011111 #b0110011010010100110000100111101000100111011011111111)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
