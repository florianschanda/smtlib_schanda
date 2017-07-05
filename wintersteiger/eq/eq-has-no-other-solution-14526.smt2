(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2947263999579676774231984381913207471370697021484375p-979 {- 1327329705026951 -979 (-2.53403e-295)}
; Y = -1.065528781410444825183958528214134275913238525390625p-738 {- 295115395542122 -738 (-7.36934e-223)}
; -1.2947263999579676774231984381913207471370697021484375p-979 = -1.065528781410444825183958528214134275913238525390625p-738 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000101100 #b0100101101110011001100000111100100010110010110000111)))
(assert (= y (fp #b1 #b00100011101 #b0001000011000110011111101000010100011010110001101010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
