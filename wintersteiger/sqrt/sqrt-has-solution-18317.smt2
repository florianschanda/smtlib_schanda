(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.433858955284492697757059431751258671283721923828125p-503 {+ 1953927029350594 -503 (5.47543e-152)}
; 1.433858955284492697757059431751258671283721923828125p-503 S == 1.6934337632659228756182301367516629397869110107421875p-252
; [HW: 1.6934337632659228756182301367516629397869110107421875p-252] 

; mpf : + 3122948037850531 -252
; mpfd: + 3122948037850531 -252 (2.33996e-076) class: Pos. norm. non-zero
; hwf : + 3122948037850531 -252 (2.33996e-076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000001000 #b0110111100010001011000010110100000000110000011000010)))
(assert (= r (fp #b0 #b01100000011 #b1011000110000100111000000000011100101011010110100011)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
