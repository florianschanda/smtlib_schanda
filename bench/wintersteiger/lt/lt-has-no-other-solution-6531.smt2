(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.262833771418009565223883328144438564777374267578125p-422 {- 1183698075018530 -422 (-1.16597e-127)}
; Y = -1.910339055897350757362573858699761331081390380859375p-719 {- 4099802632920118 -719 (-6.92697e-217)}
; -1.262833771418009565223883328144438564777374267578125p-422 < -1.910339055897350757362573858699761331081390380859375p-719 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001011001 #b0100001101001001000100101111010010000110010100100010)))
(assert (= y (fp #b1 #b00100110000 #b1110100100001011111110101111100101011001110000110110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
