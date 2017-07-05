(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4544120193864171763920012381277047097682952880859375p1005 {+ 2046489801181343 1005 (4.98693e+302)}
; Y = 1.8120742737793935628332064879941754043102264404296875p584 {+ 3657257396790043 584 (1.14734e+176)}
; 1.4544120193864171763920012381277047097682952880859375p1005 + 1.8120742737793935628332064879941754043102264404296875p584 == 1.4544120193864171763920012381277047097682952880859375p1005
; [HW: 1.4544120193864171763920012381277047097682952880859375p1005] 

; mpf : + 2046489801181343 1005
; mpfd: + 2046489801181343 1005 (4.98693e+302) class: Pos. norm. non-zero
; hwf : + 2046489801181343 1005 (4.98693e+302) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111101100 #b0111010001010100010110001001101000101100100010011111)))
(assert (= y (fp #b0 #b11001000111 #b1100111111100100000110010111111111001110001100011011)))
(assert (= r (fp #b0 #b11111101100 #b0111010001010100010110001001101000101100100010011111)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
