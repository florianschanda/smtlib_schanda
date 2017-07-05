(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9291899889181893801293199430801905691623687744140625p151 {+ 4184699687848353 151 (5.50686e+045)}
; 1.9291899889181893801293199430801905691623687744140625p151 S == 1.964275942385992568262054192018695175647735595703125p75
; [HW: 1.964275942385992568262054192018695175647735595703125p75] 

; mpf : + 4342712774811890 75
; mpfd: + 4342712774811890 75 (7.42082e+022) class: Pos. norm. non-zero
; hwf : + 4342712774811890 75 (7.42082e+022) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010010110 #b1110110111011111011001010010011000101100100110100001)))
(assert (= r (fp #b0 #b10001001010 #b1111011011011010110010011100010011011110000011110010)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
