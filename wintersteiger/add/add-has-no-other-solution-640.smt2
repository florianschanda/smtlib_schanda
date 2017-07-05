(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.98031049121302604731909013935364782810211181640625p-793 {+ 4414925962934372 -793 (3.80143e-239)}
; Y = 1.5192727064951891957633733909460715949535369873046875p-772 {+ 2338596367475403 -772 (6.11616e-233)}
; 1.98031049121302604731909013935364782810211181640625p-793 + 1.5192727064951891957633733909460715949535369873046875p-772 == 1.5192736507808159984733720193617045879364013671875p-772
; [HW: 1.5192736507808159984733720193617045879364013671875p-772] 

; mpf : + 2338600620159800 -772
; mpfd: + 2338600620159800 -772 (6.11617e-233) class: Pos. norm. non-zero
; hwf : + 2338600620159800 -772 (6.11617e-233) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011100110 #b1111101011110101101000001101101110101111100001100100)))
(assert (= y (fp #b0 #b00011111011 #b1000010011101111000011100101110000011010001011001011)))
(assert (= r (fp #b0 #b00011111011 #b1000010011101111000111100011001111000111001100111000)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
