(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0819912929109476440459047807962633669376373291015625p421 {+ 369255956201369 421 (5.85938e+126)}
; Y = -1.398516227229708253076978508033789694309234619140625p-175 {- 1794757532452810 -175 (-2.92024e-053)}
; 1.0819912929109476440459047807962633669376373291015625p421 - -1.398516227229708253076978508033789694309234619140625p-175 == 1.0819912929109476440459047807962633669376373291015625p421
; [HW: 1.0819912929109476440459047807962633669376373291015625p421] 

; mpf : + 369255956201369 421
; mpfd: + 369255956201369 421 (5.85938e+126) class: Pos. norm. non-zero
; hwf : + 369255956201369 421 (5.85938e+126) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110100100 #b0001010011111101011000011010000110011011111110011001)))
(assert (= y (fp #b1 #b01101010000 #b0110011000000101001010001101001011100000011111001010)))
(assert (= r (fp #b0 #b10110100100 #b0001010011111101011000011010000110011011111110011001)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
