(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8279699567875729027122133629745803773403167724609375p1014 {+ 3728845188862479 1014 (3.20911e+305)}
; 1.8279699567875729027122133629745803773403167724609375p1014 S == 1.3520243920830619099859859488788060843944549560546875p507
; [HW: 1.3520243920830619099859859488788060843944549560546875p507] 

; mpf : + 1585376921010603 507
; mpfd: + 1585376921010603 507 (5.6649e+152) class: Pos. norm. non-zero
; hwf : + 1585376921010603 507 (5.6649e+152) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111110101 #b1101001111110101110101101100111001111001001000001111)))
(assert (= r (fp #b0 #b10111111010 #b0101101000011110010001010100001101100100000110101011)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
