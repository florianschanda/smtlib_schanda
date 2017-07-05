(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3125087074460253244723162424634210765361785888671875p-113 {+ 1407414098403955 -113 (1.2639e-034)}
; Y = 1.04112154031300985224106625537388026714324951171875p1011 {+ 185194953630572 1011 (2.28469e+304)}
; 1.3125087074460253244723162424634210765361785888671875p-113 / 1.04112154031300985224106625537388026714324951171875p1011 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110001110 #b0101000000000000100100100001011000110010001001110011)))
(assert (= y (fp #b0 #b11111110010 #b0000101010000110111100001111011011001110001101101100)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
