(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1157995164604133098151805825182236731052398681640625p-732 {+ 521514659180801 -732 (4.93889e-221)}
; Y = -1.4342302554870656194907496683299541473388671875p-998 {- 1955599216804544 -998 (-5.35406e-301)}
; 1.1157995164604133098151805825182236731052398681640625p-732 - -1.4342302554870656194907496683299541473388671875p-998 == 1.115799516460413531859785507549531757831573486328125p-732
; [HW: 1.115799516460413531859785507549531757831573486328125p-732] 

; mpf : + 521514659180802 -732
; mpfd: + 521514659180802 -732 (4.93889e-221) class: Pos. norm. non-zero
; hwf : + 521514659180802 -732 (4.93889e-221) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100100011 #b0001110110100101000010011000000000010111000100000001)))
(assert (= y (fp #b1 #b00000011001 #b0110111100101001101101101100101001000000001011000000)))
(assert (= r (fp #b0 #b00100100011 #b0001110110100101000010011000000000010111000100000010)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
