(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.363462511669221388643791215145029127597808837890625p509 {+ 1636889632116650 509 (2.28513e+153)}
; 1.363462511669221388643791215145029127597808837890625p509 S == 1.65134037174001235825926414690911769866943359375p254
; [HW: 1.65134037174001235825926414690911769866943359375p254] 

; mpf : + 2933376255459680 254
; mpfd: + 2933376255459680 254 (4.7803e+076) class: Pos. norm. non-zero
; hwf : + 2933376255459680 254 (4.7803e+076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111111100 #b0101110100001011111000010001000011110000111110101010)))
(assert (= r (fp #b0 #b10011111101 #b1010011010111110001111100001101100110000000101100000)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
