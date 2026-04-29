(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8263885661328103093836716652731411159038543701171875p477 {+ 3721723238498963 477 (7.12691e+143)}
; Y = -1.490310587192845925841311327531002461910247802734375p250 {- 2208162577777510 250 (-2.69635e+075)}
; 1.8263885661328103093836716652731411159038543701171875p477 < -1.490310587192845925841311327531002461910247802734375p250 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111011100 #b1101001110001110001100110111100101010100001010010011)))
(assert (= y (fp #b1 #b10011111001 #b0111110110000100111111101010000011100000001101100110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
