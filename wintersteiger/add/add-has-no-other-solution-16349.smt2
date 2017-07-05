(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.417038109803914647244482694077305495738983154296875p463 {+ 1878172675912206 463 (3.37497e+139)}
; Y = -1.998932443160993610575815182528458535671234130859375p129 {- 4498791778788150 129 (-1.3604e+039)}
; 1.417038109803914647244482694077305495738983154296875p463 + -1.998932443160993610575815182528458535671234130859375p129 == 1.417038109803914647244482694077305495738983154296875p463
; [HW: 1.417038109803914647244482694077305495738983154296875p463] 

; mpf : + 1878172675912206 463
; mpfd: + 1878172675912206 463 (3.37497e+139) class: Pos. norm. non-zero
; hwf : + 1878172675912206 463 (3.37497e+139) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111001110 #b0110101011000011000000100111001011001011001000001110)))
(assert (= y (fp #b1 #b10010000000 #b1111111110111010000010010101111001001010001100110110)))
(assert (= r (fp #b0 #b10111001110 #b0110101011000011000000100111001011001011001000001110)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
