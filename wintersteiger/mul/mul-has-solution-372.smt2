(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9487294167104975972648617243976332247257232666015625p-256 {+ 4272697447572825 -256 (1.68296e-077)}
; Y = -1.6631464135001554627280029308167286217212677001953125p746 {- 2986545940731381 746 (-6.15612e+224)}
; 1.9487294167104975972648617243976332247257232666015625p-256 * -1.6631464135001554627280029308167286217212677001953125p746 == -1.6205111701421568426439989707432687282562255859375p491
; [HW: -1.6205111701421568426439989707432687282562255859375p491] 

; mpf : - 2794533874631448 491
; mpfd: - 2794533874631448 491 (-1.03605e+148) class: Neg. norm. non-zero
; hwf : - 2794533874631448 491 (-1.03605e+148) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011111111 #b1111001011011111111011100101100110000110010101011001)))
(assert (= y (fp #b1 #b11011101001 #b1010100111000011111101101001111001110001010111110101)))
(assert (= r (fp #b1 #b10111101010 #b1001111011011001110100011110111010010000001100011000)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
