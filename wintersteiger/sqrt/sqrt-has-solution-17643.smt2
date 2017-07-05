(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4547504813188025796222291319281794130802154541015625p-94 {+ 2048014098213913 -94 (7.34461e-029)}
; 1.4547504813188025796222291319281794130802154541015625p-94 S == 1.20613037492586272492189891636371612548828125p-47
; [HW: 1.20613037492586272492189891636371612548828125p-47] 

; mpf : + 928328679705856 -47
; mpfd: + 928328679705856 -47 (8.57007e-015) class: Pos. norm. non-zero
; hwf : + 928328679705856 -47 (8.57007e-015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110100001 #b0111010001101010100001110000110100011010110000011001)))
(assert (= r (fp #b0 #b01111010000 #b0011010011000100111101011101001100000100110100000000)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
