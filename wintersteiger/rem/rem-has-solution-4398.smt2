(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9722820170648900361953792526037432253360748291015625p-416 {+ 4378768929752473 -416 (1.16544e-125)}
; Y = -1.8755863102352094973213070261408574879169464111328125p-865 {- 3943290180505997 -865 (-7.62414e-261)}
; 1.9722820170648900361953792526037432253360748291015625p-416 % -1.8755863102352094973213070261408574879169464111328125p-865 == 1.7171251635606441521275655759382061660289764404296875p-865
; [HW: 1.7171251635606441521275655759382061660289764404296875p-865] 

; mpf : + 3229644619389723 -865
; mpfd: + 3229644619389723 -865 (6.98e-261) class: Pos. norm. non-zero
; hwf : + 3229644619389723 -865 (6.98e-261) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001011111 #b1111100011100111011110010110100111001000010110011001)))
(assert (= y (fp #b1 #b00010011110 #b1110000000100110011011001010011101001001000110001101)))
(assert (= r (fp #b1 #b00010011011 #x448747153b390)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
