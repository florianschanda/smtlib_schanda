(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.683501718105997024821363083901815116405487060546875p-999 {+ 3078218082969262 -999 (3.1423e-301)}
; 1.683501718105997024821363083901815116405487060546875p-999 S == 1.8349396274024913910949408091255463659763336181640625p-500
; [HW: 1.8349396274024913910949408091255463659763336181640625p-500] 

; mpf : + 3760233794846721 -500
; mpfd: + 3760233794846721 -500 (5.60562e-151) class: Pos. norm. non-zero
; hwf : + 3760233794846721 -500 (5.60562e-151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000011000 #b1010111011111001111101111111011000000110011010101110)))
(assert (= r (fp #b0 #b01000001011 #b1101010110111110100110100111100111010100000000000001)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
