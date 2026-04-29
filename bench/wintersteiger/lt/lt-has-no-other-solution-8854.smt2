(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2967297656485461399000769233680330216884613037109375p-1000 {+ 1336352062004527 -1000 (1.21019e-301)}
; Y = -1.95665183126813868597082546330057084560394287109375p283 {- 4308376830822492 283 (-3.0409e+085)}
; 1.2967297656485461399000769233680330216884613037109375p-1000 < -1.95665183126813868597082546330057084560394287109375p283 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000010111 #b0100101111110110011110110101111100110101110100101111)))
(assert (= y (fp #b1 #b10100011010 #b1111010011100111001000100110100011110100100001011100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
