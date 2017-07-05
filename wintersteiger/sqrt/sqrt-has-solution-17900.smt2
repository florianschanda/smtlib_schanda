(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9518594670230464682703086509718559682369232177734375p989 {+ 4286793940994071 989 (1.02121e+298)}
; 1.9518594670230464682703086509718559682369232177734375p989 S == 1.975783119182389580004155504866503179073333740234375p494
; [HW: 1.975783119182389580004155504866503179073333740234375p494] 

; mpf : + 4394536491944230 494
; mpfd: + 4394536491944230 494 (1.01055e+149) class: Pos. norm. non-zero
; hwf : + 4394536491944230 494 (1.01055e+149) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111011100 #b1111001110101101000011111110000101000000100000010111)))
(assert (= r (fp #b0 #b10111101101 #b1111100111001100111011000010100011100000100100100110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
