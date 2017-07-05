(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.749378782345981875323559506796300411224365234375p-509 {+ 3374902004932720 -509 (1.0438e-153)}
; 1.749378782345981875323559506796300411224365234375p-509 S == 1.870496609109987939945085599902085959911346435546875p-255
; [HW: 1.870496609109987939945085599902085959911346435546875p-255] 

; mpf : + 3920368204415022 -255
; mpfd: + 3920368204415022 -255 (3.23078e-077) class: Pos. norm. non-zero
; hwf : + 3920368204415022 -255 (3.23078e-077) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000000010 #b1011111111010111010010011011001001111110000001110000)))
(assert (= r (fp #b0 #b01100000000 #b1101111011011000110111011010001101101000000000101110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
