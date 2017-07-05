(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.857028799677958641467512279632501304149627685546875p-735 {+ 3859714582875438 -735 (1.02748e-221)}
; Y = 1.117425380304752469129425662686116993427276611328125p192 {+ 528836898984322 192 (7.01419e+057)}
; 1.857028799677958641467512279632501304149627685546875p-735 M 1.117425380304752469129425662686116993427276611328125p192 == 1.117425380304752469129425662686116993427276611328125p192
; [HW: 1.117425380304752469129425662686116993427276611328125p192] 

; mpf : + 528836898984322 192
; mpfd: + 528836898984322 192 (7.01419e+057) class: Pos. norm. non-zero
; hwf : + 528836898984322 192 (7.01419e+057) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100100000 #b1101101101100110001111010100101001011000110100101110)))
(assert (= y (fp #b0 #b10010111111 #b0001111000001111100101101111100000100001000110000010)))
(assert (= r (fp #b0 #b10010111111 #b0001111000001111100101101111100000100001000110000010)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
