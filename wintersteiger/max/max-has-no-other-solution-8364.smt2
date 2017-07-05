(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3616067633255550806126166207832284271717071533203125p584 {+ 1628532084567621 584 (8.62123e+175)}
; Y = 1.04659663158436000429674095357768237590789794921875p-820 {+ 209852572640044 -820 (1.49687e-247)}
; 1.3616067633255550806126166207832284271717071533203125p584 M 1.04659663158436000429674095357768237590789794921875p-820 == 1.3616067633255550806126166207832284271717071533203125p584
; [HW: 1.3616067633255550806126166207832284271717071533203125p584] 

; mpf : + 1628532084567621 584
; mpfd: + 1628532084567621 584 (8.62123e+175) class: Pos. norm. non-zero
; hwf : + 1628532084567621 584 (8.62123e+175) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000111 #b0101110010010010010000101100011001111110111001000101)))
(assert (= y (fp #b0 #b00011001011 #b0000101111101101110000011100000011000010001100101100)))
(assert (= r (fp #b0 #b11001000111 #b0101110010010010010000101100011001111110111001000101)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
