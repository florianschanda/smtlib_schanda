(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.658371168672131634735933403135277330875396728515625p-157 {+ 2965040149903290 -157 (9.07763e-048)}
; Y = 1.1506836065035475069606718534487299621105194091796875p-420 {+ 678618634100219 -420 (4.24969e-127)}
; 1.658371168672131634735933403135277330875396728515625p-157 = 1.1506836065035475069606718534487299621105194091796875p-420 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101100010 #b1010100010001011000000110100111000010011011110111010)))
(assert (= y (fp #b0 #b01001011011 #b0010011010010011001100110110100111111001110111111011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
