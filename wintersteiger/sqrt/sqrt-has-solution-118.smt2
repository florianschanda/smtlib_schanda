(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6733273964605508421499280302668921649456024169921875p850 {+ 3032397011798083 850 (1.25625e+256)}
; 1.6733273964605508421499280302668921649456024169921875p850 S == 1.29357156603743828071628740872256457805633544921875p425
; [HW: 1.29357156603743828071628740872256457805633544921875p425] 

; mpf : + 1322128795412780 425
; mpfd: + 1322128795412780 425 (1.12083e+128) class: Pos. norm. non-zero
; hwf : + 1322128795412780 425 (1.12083e+128) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101010001 #b1010110001011111001011110010101101001100100001000011)))
(assert (= r (fp #b0 #b10110101000 #b0100101100100111100000011001001100101010100100101100)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
