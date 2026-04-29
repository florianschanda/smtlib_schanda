(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7587979300471758836721392071922309696674346923828125 187 {+ 3417322075009965 187 (3.45005e+056)}
; 1.7587979300471758836721392071922309696674346923828125 187 I == 1.7587979300471758836721392071922309696674346923828125 187
; [HW: 1.7587979300471758836721392071922309696674346923828125 187] 

; mpf : + 3417322075009965 187
; mpfd: + 3417322075009965 187 (3.45005e+056) class: Pos. norm. non-zero
; hwf : + 3417322075009965 187 (3.45005e+056) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010111010 #b1100001001000000100101001100010111010011001110101101)))
(assert (= r (fp #b0 #b10010111010 #b1100001001000000100101001100010111010011001110101101)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
