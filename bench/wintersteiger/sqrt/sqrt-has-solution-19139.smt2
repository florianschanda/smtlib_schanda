(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3070225356215388057279369604657404124736785888671875p-108 {+ 1382706577019507 -108 (4.02757e-033)}
; 1.3070225356215388057279369604657404124736785888671875p-108 S == 1.1432508629437105884818492995691485702991485595703125p-54
; [HW: 1.1432508629437105884818492995691485702991485595703125p-54] 

; mpf : + 645144532973797 -54
; mpfd: + 645144532973797 -54 (6.34632e-017) class: Pos. norm. non-zero
; hwf : + 645144532973797 -54 (6.34632e-017) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110010011 #b0100111010011001000001110110010110100001001001110011)))
(assert (= r (fp #b0 #b01111001001 #b0010010010101100000101101010101101110111100011100101)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
