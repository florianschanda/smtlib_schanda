(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5621273397393540260935651531326584517955780029296875p-951 {+ 2531596477784923 -951 (8.20712e-287)}
; 1.5621273397393540260935651531326584517955780029296875p-951 S == 1.7675561319173735963516946867457590997219085693359375p-476
; [HW: 1.7675561319173735963516946867457590997219085693359375p-476] 

; mpf : + 3456765509689023 -476
; mpfd: + 3456765509689023 -476 (9.05931e-144) class: Pos. norm. non-zero
; hwf : + 3456765509689023 -476 (9.05931e-144) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001001000 #b1000111111100111100100111100110001011110001101011011)))
(assert (= r (fp #b0 #b01000100011 #b1100010001111110100011110000010001101101111010111111)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
