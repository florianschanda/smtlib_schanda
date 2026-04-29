(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.64133750876514827865548795671202242374420166015625p-789 {+ 2888327365493444 -789 (5.04117e-238)}
; Y = 1.92033704268282168214909688686020672321319580078125p-416 {+ 4144829562481620 -416 (1.13475e-125)}
; 1.64133750876514827865548795671202242374420166015625p-789 > 1.92033704268282168214909688686020672321319580078125p-416 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011101010 #b1010010000101110101100011110100111011000001011000100)))
(assert (= y (fp #b0 #b01001011111 #b1110101110011011001101010101101110011110101111010100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
