(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.309750237474487821742741289199329912662506103515625p-812 {+ 1394991054068026 -812 (4.79548e-245)}
; Y = -1.42161801953282651567178618279285728931427001953125p816 {- 1898798755660724 816 (-6.2124e+245)}
; 1.309750237474487821742741289199329912662506103515625p-812 M -1.42161801953282651567178618279285728931427001953125p816 == 1.309750237474487821742741289199329912662506103515625p-812
; [HW: 1.309750237474487821742741289199329912662506103515625p-812] 

; mpf : + 1394991054068026 -812
; mpfd: + 1394991054068026 -812 (4.79548e-245) class: Pos. norm. non-zero
; hwf : + 1394991054068026 -812 (4.79548e-245) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011010011 #b0100111101001011110010101010001111100001100100111010)))
(assert (= y (fp #b1 #b11100101111 #b0110101111101111001010001001010101001100001110110100)))
(assert (= r (fp #b0 #b00011010011 #b0100111101001011110010101010001111100001100100111010)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
