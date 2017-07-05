(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9424756563959260091678515891544520854949951171875p27 {+ 4244533014950456 27 (2.60715e+008)}
; 1.9424756563959260091678515891544520854949951171875p27 S == 1.9710279837668089886193456550245173275470733642578125p13
; [HW: 1.9710279837668089886193456550245173275470733642578125p13] 

; mpf : + 4373121265858525 13
; mpfd: + 4373121265858525 13 (16146.7) class: Pos. norm. non-zero
; hwf : + 4373121265858525 13 (16146.7) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000011010 #b1111000101000110000101011010100101111111001000111000)))
(assert (= r (fp #b0 #b10000001100 #b1111100010010101010010100011100111000111011111011101)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
