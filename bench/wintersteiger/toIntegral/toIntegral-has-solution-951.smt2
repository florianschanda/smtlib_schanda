(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4288530609700103024550799091230146586894989013671875 814 {- 1931382485581235 814 (-1.561e+245)}
; -1.4288530609700103024550799091230146586894989013671875 814 I == -1.4288530609700103024550799091230146586894989013671875 814
; [HW: -1.4288530609700103024550799091230146586894989013671875 814] 

; mpf : - 1931382485581235 814
; mpfd: - 1931382485581235 814 (-1.561e+245) class: Neg. norm. non-zero
; hwf : - 1931382485581235 814 (-1.561e+245) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100101101 #b0110110111001001010100000110111110100111110110110011)))
(assert (= r (fp #b1 #b11100101101 #b0110110111001001010100000110111110100111110110110011)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
