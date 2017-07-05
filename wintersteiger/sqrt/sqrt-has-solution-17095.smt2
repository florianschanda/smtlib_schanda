(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4543550517990053716488318968913517892360687255859375p341 {+ 2046233241975903 341 (6.51477e+102)}
; 1.4543550517990053716488318968913517892360687255859375p341 S == 1.7054940936860527589402636294835247099399566650390625p170
; [HW: 1.7054940936860527589402636294835247099399566650390625p170] 

; mpf : + 3177262937436593 170
; mpfd: + 3177262937436593 170 (2.5524e+051) class: Pos. norm. non-zero
; hwf : + 3177262937436593 170 (2.5524e+051) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101010100 #b0111010001010000100111001101100000111111110001011111)))
(assert (= r (fp #b0 #b10010101001 #b1011010010011011010000101100101111100111000110110001)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
