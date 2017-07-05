(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6615375509743441906351790748885832726955413818359375p-224 {+ 2979300268059647 -224 (6.16299e-068)}
; 1.6615375509743441906351790748885832726955413818359375p-224 S == 1.2890064200671556005062257099780254065990447998046875p-112
; [HW: 1.2890064200671556005062257099780254065990447998046875p-112] 

; mpf : + 1301569205722123 -112
; mpfd: + 1301569205722123 -112 (2.48254e-034) class: Pos. norm. non-zero
; hwf : + 1301569205722123 -112 (2.48254e-034) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100011111 #b1010100101011010100001100110001010000010101111111111)))
(assert (= r (fp #b0 #b01110001111 #b0100100111111100010100110010001010000101110000001011)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
