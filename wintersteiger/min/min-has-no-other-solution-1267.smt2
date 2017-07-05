(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8221981720060191900500967676634900271892547607421875p254 {+ 3702851381071011 254 (5.2749e+076)}
; Y = 1.7859286109812788634343405647086910903453826904296875p-459 {+ 3539507799555099 -459 (1.19976e-138)}
; 1.8221981720060191900500967676634900271892547607421875p254 m 1.7859286109812788634343405647086910903453826904296875p-459 == 1.7859286109812788634343405647086910903453826904296875p-459
; [HW: 1.7859286109812788634343405647086910903453826904296875p-459] 

; mpf : + 3539507799555099 -459
; mpfd: + 3539507799555099 -459 (1.19976e-138) class: Pos. norm. non-zero
; hwf : + 3539507799555099 -459 (1.19976e-138) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011111101 #b1101001001111011100101000101001110011000110010100011)))
(assert (= y (fp #b0 #b01000110100 #b1100100100110010100111100001000100100111110000011011)))
(assert (= r (fp #b0 #b01000110100 #b1100100100110010100111100001000100100111110000011011)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
