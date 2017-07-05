(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9007193085777507324252155740396119654178619384765625 708 {+ 4056479142476169 708 (2.5595e+213)}
; 1.9007193085777507324252155740396119654178619384765625 708 I == 1.9007193085777507324252155740396119654178619384765625 708
; [HW: 1.9007193085777507324252155740396119654178619384765625 708] 

; mpf : + 4056479142476169 708
; mpfd: + 4056479142476169 708 (2.5595e+213) class: Pos. norm. non-zero
; hwf : + 4056479142476169 708 (2.5595e+213) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011000011 #b1110011010010101100010100110010100110111100110001001)))
(assert (= r (fp #b0 #b11011000011 #b1110011010010101100010100110010100110111100110001001)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
