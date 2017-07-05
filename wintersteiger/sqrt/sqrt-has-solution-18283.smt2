(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8753557958036732866702323008212260901927947998046875p-902 {+ 3942252035798027 -902 (5.54661e-272)}
; 1.8753557958036732866702323008212260901927947998046875p-902 S == 1.3694363058586087600332348301890306174755096435546875p-451
; [HW: 1.3694363058586087600332348301890306174755096435546875p-451] 

; mpf : + 1663793209401963 -451
; mpfd: + 1663793209401963 -451 (2.35512e-136) class: Pos. norm. non-zero
; hwf : + 1663793209401963 -451 (2.35512e-136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001111001 #b1110000000010111010100010100001101010111010000001011)))
(assert (= r (fp #b0 #b01000111100 #b0101111010010011011000001011001110011110001001101011)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
