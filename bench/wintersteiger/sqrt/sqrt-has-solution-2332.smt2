(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7332603426487935838196108306874521076679229736328125p-218 {+ 3302311005918669 -218 (4.11457e-066)}
; 1.7332603426487935838196108306874521076679229736328125p-218 S == 1.31653345671456190046910705859772861003875732421875p-109
; [HW: 1.31653345671456190046910705859772861003875732421875p-109] 

; mpf : + 1425539957709996 -109
; mpfd: + 1425539957709996 -109 (2.02844e-033) class: Pos. norm. non-zero
; hwf : + 1425539957709996 -109 (2.02844e-033) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100100101 #b1011101110110110111100110010011100100001010111001101)))
(assert (= r (fp #b0 #b01110010010 #b0101000100001000010101100010110010101101110010101100)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
