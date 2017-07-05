(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1783915864740250878384131283382885158061981201171875 142 {+ 803404282370451 142 (6.56975e+042)}
; 1.1783915864740250878384131283382885158061981201171875 142 I == 1.1783915864740250878384131283382885158061981201171875 142
; [HW: 1.1783915864740250878384131283382885158061981201171875 142] 

; mpf : + 803404282370451 142
; mpfd: + 803404282370451 142 (6.56975e+042) class: Pos. norm. non-zero
; hwf : + 803404282370451 142 (6.56975e+042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010001101 #b0010110110101011000100100010110111001001100110010011)))
(assert (= r (fp #b0 #b10010001101 #b0010110110101011000100100010110111001001100110010011)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
