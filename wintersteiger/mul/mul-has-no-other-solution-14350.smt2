(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.629949021134374564923064099275507032871246337890625p333 {- 2837038176843178 333 (-2.85209e+100)}
; Y = -1.8125308628449510184310611293767578899860382080078125p-669 {- 3659313691135549 -669 (-7.39977e-202)}
; -1.629949021134374564923064099275507032871246337890625p333 * -1.8125308628449510184310611293767578899860382080078125p-669 == 1.4771664528349857103961539905867539346218109130859375p-335
; [HW: 1.4771664528349857103961539905867539346218109130859375p-335] 

; mpf : + 2148966659181343 -335
; mpfd: + 2148966659181343 -335 (2.11048e-101) class: Pos. norm. non-zero
; hwf : + 2148966659181343 -335 (2.11048e-101) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101001100 #b1010000101000100010101101100101111101011010110101010)))
(assert (= y (fp #b1 #b00101100010 #b1101000000000010000001011100101011101000111000111101)))
(assert (= r (fp #b0 #b01010110000 #b0111101000100111100101001010010110101100101100011111)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
