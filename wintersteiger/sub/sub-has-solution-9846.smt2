(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.721234464031201838452034280635416507720947265625p-879 {+ 3248151263457680 -879 (4.27045e-265)}
; Y = -1.9710313355718376282510462260688655078411102294921875p-560 {- 4373136361046403 -560 (-5.22271e-169)}
; 1.721234464031201838452034280635416507720947265625p-879 - -1.9710313355718376282510462260688655078411102294921875p-560 == 1.9710313355718376282510462260688655078411102294921875p-560
; [HW: 1.9710313355718376282510462260688655078411102294921875p-560] 

; mpf : + 4373136361046403 -560
; mpfd: + 4373136361046403 -560 (5.22271e-169) class: Pos. norm. non-zero
; hwf : + 4373136361046403 -560 (5.22271e-169) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010010000 #b1011100010100010110100100110001111000011000110010000)))
(assert (= y (fp #b1 #b00111001111 #b1111100010010101100000100111010110101100000110000011)))
(assert (= r (fp #b0 #b00111001111 #b1111100010010101100000100111010110101100000110000011)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)
