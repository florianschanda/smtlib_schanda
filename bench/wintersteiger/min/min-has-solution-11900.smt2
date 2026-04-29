(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3129939964152359532789660079288296401500701904296875p787 {- 1409599645624859 787 (-1.06873e+237)}
; Y = -zero {- 0 -1023 (-0)}
; -1.3129939964152359532789660079288296401500701904296875p787 m -zero == -1.3129939964152359532789660079288296401500701904296875p787
; [HW: -1.3129939964152359532789660079288296401500701904296875p787] 

; mpf : - 1409599645624859 787
; mpfd: - 1409599645624859 787 (-1.06873e+237) class: Neg. norm. non-zero
; hwf : - 1409599645624859 787 (-1.06873e+237) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100010010 #b0101000000100000010111111110001001110010101000011011)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b11100010010 #b0101000000100000010111111110001001110010101000011011)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
