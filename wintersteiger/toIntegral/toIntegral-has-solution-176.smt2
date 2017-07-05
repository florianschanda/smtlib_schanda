(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4925733831021457120868944912217557430267333984375 167 {+ 2218353304591448 167 (2.79219e+050)}
; 1.4925733831021457120868944912217557430267333984375 167 I == 1.4925733831021457120868944912217557430267333984375 167
; [HW: 1.4925733831021457120868944912217557430267333984375 167] 

; mpf : + 2218353304591448 167
; mpfd: + 2218353304591448 167 (2.79219e+050) class: Pos. norm. non-zero
; hwf : + 2218353304591448 167 (2.79219e+050) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010100110 #b0111111000011001010010100000101101001101110001011000)))
(assert (= r (fp #b0 #b10010100110 #b0111111000011001010010100000101101001101110001011000)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
