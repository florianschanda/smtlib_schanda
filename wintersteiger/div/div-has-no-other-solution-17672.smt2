(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.04374080607438646239870649878866970539093017578125p402 {+ 196991077937492 402 (1.07808e+121)}
; Y = -1.2689522315288470633021233879844658076763153076171875p154 {- 1211253169693779 154 (-2.89777e+046)}
; 1.04374080607438646239870649878866970539093017578125p402 / -1.2689522315288470633021233879844658076763153076171875p154 == -1.645043493586636262904221439384855329990386962890625p247
; [HW: -1.645043493586636262904221439384855329990386962890625p247] 

; mpf : - 2905017637354538 247
; mpfd: - 2905017637354538 247 (-3.72037e+074) class: Neg. norm. non-zero
; hwf : - 2905017637354538 247 (-3.72037e+074) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110010001 #b0000101100110010100110001111001110010111000101010100)))
(assert (= y (fp #b1 #b10010011001 #b0100010011011010000011011010111010011010010001010011)))
(assert (= r (fp #b1 #b10011110110 #b1010010100100001100100100000010101110011110000101010)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
