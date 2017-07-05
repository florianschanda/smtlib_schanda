(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9201235260084852374262709417962469160556793212890625p-654 {+ 4143867968866641 -654 (2.56869e-197)}
; 1.9201235260084852374262709417962469160556793212890625p-654 S == 1.3856852189471045022628459264524281024932861328125p-327
; [HW: 1.3856852189471045022628459264524281024932861328125p-327] 

; mpf : + 1736971808332488 -327
; mpfd: + 1736971808332488 -327 (5.06823e-099) class: Pos. norm. non-zero
; hwf : + 1736971808332488 -327 (5.06823e-099) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101110001 #b1110101110001101001101110010010001111100100101010001)))
(assert (= r (fp #b0 #b01010111000 #b0110001010111100010001000011100111101101101011001000)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
