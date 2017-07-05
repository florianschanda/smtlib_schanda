(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3212804762470735653323572478257119655609130859375p721 {- 1446918633107736 721 (-1.45754e+217)}
; Y = 1.1508002946024642465516762968036346137523651123046875p261 {+ 679144150579019 261 (4.26411e+078)}
; -1.3212804762470735653323572478257119655609130859375p721 < 1.1508002946024642465516762968036346137523651123046875p261 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011010000 #b0101001000111111011011111111001001010011000100011000)))
(assert (= y (fp #b0 #b10100000100 #b0010011010011010110110010001110110001011011101001011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
