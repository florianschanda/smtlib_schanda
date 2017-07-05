(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9764184347252478080037008112412877380847930908203125p29 {+ 4397397698786309 29 (1.06108e+009)}
; 1.9764184347252478080037008112412877380847930908203125p29 S == 1.9881742553032155651493440018384717404842376708984375p14
; [HW: 1.9881742553032155651493440018384717404842376708984375p14] 

; mpf : + 4450341207960679 14
; mpfd: + 4450341207960679 14 (32574.2) class: Pos. norm. non-zero
; hwf : + 4450341207960679 14 (32574.2) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000011100 #b1111100111110110100011101111110001011011010000000101)))
(assert (= r (fp #b0 #b10000001101 #b1111110011111000111111001110110101000110110001100111)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
