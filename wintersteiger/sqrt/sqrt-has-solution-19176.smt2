(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.102196192042736555549709009937942028045654296875p-288 {+ 460250732402352 -288 (2.21626e-087)}
; 1.102196192042736555549709009937942028045654296875p-288 S == 1.0498553195763389300765311418217606842517852783203125p-144
; [HW: 1.0498553195763389300765311418217606842517852783203125p-144] 

; mpf : + 224528398666437 -144
; mpfd: + 224528398666437 -144 (4.70771e-044) class: Pos. norm. non-zero
; hwf : + 224528398666437 -144 (4.70771e-044) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011011111 #b0001101000101001100001111001011010011001011010110000)))
(assert (= r (fp #b0 #b01101101111 #b0000110011000011010100010111011100011100101011000101)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
