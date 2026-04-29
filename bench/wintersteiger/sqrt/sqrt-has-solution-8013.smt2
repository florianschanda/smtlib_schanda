(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6802203208538901701984968894976191222667694091796875p-531 {+ 3063439983527419 -531 (2.39022e-160)}
; 1.6802203208538901701984968894976191222667694091796875p-531 S == 1.833150468921681319756089578731916844844818115234375p-266
; [HW: 1.833150468921681319756089578731916844844818115234375p-266] 

; mpf : + 3752176141379238 -266
; mpfd: + 3752176141379238 -266 (1.54603e-080) class: Pos. norm. non-zero
; hwf : + 3752176141379238 -266 (1.54603e-080) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111101100 #b1010111000100010111010110100000000100100010111111011)))
(assert (= r (fp #b0 #b01011110101 #b1101010101001001010110010110000010101010011010100110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
