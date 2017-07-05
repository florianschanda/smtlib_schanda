(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5993960355919891735965165935340337455272674560546875p-759 {+ 2699439762539435 -759 (5.2746e-229)}
; 1.5993960355919891735965165935340337455272674560546875p-759 S == 1.7885167237641301785089353870716877281665802001953125p-380
; [HW: 1.7885167237641301785089353870716877281665802001953125p-380] 

; mpf : + 3551163623319541 -380
; mpfd: + 3551163623319541 -380 (7.26264e-115) class: Pos. norm. non-zero
; hwf : + 3551163623319541 -380 (7.26264e-115) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100001000 #b1001100101110010000001001100001000111000001110101011)))
(assert (= r (fp #b0 #b01010000011 #b1100100111011100001110110110010011101010011111110101)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
