(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.345107341258575228692961900378577411174774169921875p505 {+ 1554225293494942 505 (1.40898e+152)}
; 1.345107341258575228692961900378577411174774169921875p505 S == 1.6401873925003662701982420912827365100383758544921875p252
; [HW: 1.6401873925003662701982420912827365100383758544921875p252] 

; mpf : + 2883147702311939 252
; mpfd: + 2883147702311939 252 (1.187e+076) class: Pos. norm. non-zero
; hwf : + 2883147702311939 252 (1.187e+076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111111000 #b0101100001011000111101000110100001010000101010011110)))
(assert (= r (fp #b0 #b10011111011 #b1010001111100011010100100010101000011001110000000011)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
