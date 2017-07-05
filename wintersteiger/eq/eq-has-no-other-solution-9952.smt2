(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.318214440074871873775919084437191486358642578125p-244 {+ 1433110433745104 -244 (4.66302e-074)}
; Y = -1.1241451803540376541690193334943614900112152099609375p-198 {- 559100187982287 -198 (-2.79823e-060)}
; 1.318214440074871873775919084437191486358642578125p-244 = -1.1241451803540376541690193334943614900112152099609375p-198 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100001011 #b0101000101110110100000000110010100111100100011010000)))
(assert (= y (fp #b1 #b01100111001 #b0001111111000111111110101000000110010011100111001111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
