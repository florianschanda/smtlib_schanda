(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2703737613613081958163775198045186698436737060546875p662 {+ 1217655170917547 662 (2.43102e+199)}
; 1.2703737613613081958163775198045186698436737060546875p662 S == 1.1271085845477835096772878387128002941608428955078125p331
; [HW: 1.1271085845477835096772878387128002941608428955078125p331] 

; mpf : + 572446174004989 331
; mpfd: + 572446174004989 331 (4.93054e+099) class: Pos. norm. non-zero
; hwf : + 572446174004989 331 (4.93054e+099) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010010101 #b0100010100110111001101101111111010111110010010101011)))
(assert (= r (fp #b0 #b10101001010 #b0010000010001010001100000010110110101100011011111101)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
