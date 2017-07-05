(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.23490921193858316229352567461319267749786376953125p-478 {+ 1057937039352500 -478 (1.58233e-144)}
; Y = 1.61250174931082934648429727531038224697113037109375p344 {+ 2758462649960028 344 (5.77855e+103)}
; 1.23490921193858316229352567461319267749786376953125p-478 + 1.61250174931082934648429727531038224697113037109375p344 == 1.61250174931082934648429727531038224697113037109375p344
; [HW: 1.61250174931082934648429727531038224697113037109375p344] 

; mpf : + 2758462649960028 344
; mpfd: + 2758462649960028 344 (5.77855e+103) class: Pos. norm. non-zero
; hwf : + 2758462649960028 344 (5.77855e+103) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000100001 #b0011110000100011000000101001011011001110001010110100)))
(assert (= y (fp #b0 #b10101010111 #b1001110011001100111010100010011000001000011001011100)))
(assert (= r (fp #b0 #b10101010111 #b1001110011001100111010100010011000001000011001011100)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
