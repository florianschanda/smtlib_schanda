(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.74222393701215150230154904420487582683563232421875p-730 {+ 3342679446153388 -730 (3.08466e-220)}
; Y = -1.3676053865427546529787150575430132448673248291015625p9 {- 1655547481853337 9 (-700.214)}
; Z = 1.248783385686475622122770801070146262645721435546875p-334 {+ 1120420763073582 -334 (3.56836e-101)}
; 1.74222393701215150230154904420487582683563232421875p-730 x -1.3676053865427546529787150575430132448673248291015625p9 1.248783385686475622122770801070146262645721435546875p-334 == 1.2487833856864754000781658760388381779193878173828125p-334
; [HW: 1.2487833856864754000781658760388381779193878173828125p-334] 

; mpf : + 1120420763073581 -334
; mpfd: + 1120420763073581 -334 (3.56836e-101) class: Pos. norm. non-zero
; hwf : + 1120420763073581 -334 (3.56836e-101) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100100101 #b1011111000000010011000110100111111000110100010101100)))
(assert (= y (fp #b1 #b10000001000 #b0101111000011011011000101111100100001000110110011001)))
(assert (= z (fp #b0 #b01010110001 #b0011111110110000010001001001100101001111110000101110)))
(assert (= r (fp #b0 #b01010110001 #b0011111110110000010001001001100101001111110000101101)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
